//
//  MissionAndPurposeViewController.swift
//  MyDemo
//
//  Created by user242733 on 8/24/23.
//

import UIKit

class MissionAndPurposeViewController: UIViewController {
    
    @IBOutlet weak var purposeLabel: UILabel!
    @IBOutlet weak var visionLabel: UILabel!
    @IBOutlet weak var coreValuesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        purposeLabel.text = "We improve communities and lifestyle"
        
        visionLabel.text = "To redefine the markets in which we serve by providing superior product and positively outrageous customer service."
        
        coreValuesLabel.text = """
                                HONESTY, INTERGRITY, AND RESPECT
                                Treat everyone with honesty and respect and uphold the highest standards
                                
                                TEAM
                                Treat all team members like family, recognize their achievements, provide opportunities, trust their desire to uphold our core values, foster teamwork, encourage innvation, and enjoy our company culture.
                                """

    }
    


}
