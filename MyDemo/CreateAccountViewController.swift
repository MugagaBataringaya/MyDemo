//
//  CreateAccountViewController.swift
//  MyDemo
//
//  Created by user242733 on 7/31/23.
//
import FirebaseAuth
import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.placeholder = "First name"
        lastNameTextField.placeholder = "Last name"
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
    }
    
    private func createAccount(){
        guard let firstName = firstNameTextField.text, !firstName.isEmpty,
              let lastName = lastNameTextField.text, !lastName.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else{
            alert(title: "Failed to create account", message: "Fill in all the fields")
            return
              }
        Auth.auth().createUser(withEmail: email, password: password) { [weak self]_, maybeError in
            if let error = maybeError{
                let authError = AuthErrorCode.Code(rawValue: error._code)
                switch authError{
                case .emailAlreadyInUse:
                    self?.alert(title: "Failed to create account", message: "The email you are trying to use is already taken")
                case .invalidEmail:
                    self?.alert(title: "Failed to create account", message: "You are using an invalid email")
                case .weakPassword:
                    self?.alert(title: "Failed to create account", message: "You are using a weak password")
                default:
                    self?.alert(title: "Failed to create account", message: "Something went wrong, try again")
                }
                return
            }
            self?.performSegue(withIdentifier: "createAccountSegue", sender: nil)
        }
              
    }
    
    @IBAction func didTapCreate(_ sender: UIButton) {
        createAccount()
        
    }
    
    @IBAction func didTapAlreadyHaveAccount(_ sender: UIButton) {
        
    }
    
    private func alert(title: String, message: String){
        var alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel))
        present(alertVC, animated: true)
    }
    
}
