//
//  ViewController.swift
//  MyDemo
//
//  Created by user242733 on 7/29/23.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var personImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
    }
    
    private func login(){
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else{
            alert(title: "Failed to login", message: "Email or password is empty")
            return
        }
        Auth.auth().signIn(withEmail: email, password: password) {[weak self] _, anyError in
            if let error = anyError{
                let authError = AuthErrorCode.Code(rawValue: error._code)
                switch authError{
                case .invalidEmail:
                    self?.alert(title: "Login failed", message: "You are using an invalid email")
                case .wrongPassword:
                    self?.alert(title: "Login failed", message: "You are using a wrong password")
                case .userDisabled:
                    self?.alert(title: "Login failed", message: "Tis account has been disabled")
                case .userNotFound:
                    self?.alert(title: "Login failed", message: "This user hasnot been found")
                default:
                    self?.alert(title: "Login failed", message: "Check your username or pass")
                }
//                self?.performSegue(withIdentifier: "loginScreenSegue", sender: nil)
            }
        }
    }

    @IBAction func didTapLogin(_ sender: UIButton) {
        login()
    }

    @IBAction func didTapForgotPassword(_ sender: UIButton) {
    }
    
    @IBAction func didTapIdontHaveAccount(_ sender: UIButton) {
    }
    
    
    
    private func alert(title: String, message: String){
        var alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alertVC, animated: true)
    }
    
}

