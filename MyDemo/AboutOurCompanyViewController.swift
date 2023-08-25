//
//  AboutOurCompanyViewController.swift
//  MyDemo
//
//  Created by user242733 on 8/24/23.
//

import UIKit

class AboutOurCompanyViewController: UIViewController {
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DescriptionLabel.text = """
                                We are cyber media company that develops innovative solutions for the edication sector.

                                We started our journey in 2022, when our founders James and Mega realized the potential of using artificial inteligence and gamification to create engaging and personalized learning experiences.
                                
                                Since then we have grown to a team of over fifty  professionals, and expanded our product portfolio to include DEF, a learning management system that intergrates with Cyber media and other popular tools like GHI, a mobile app that enables students to access their courses, assignments anytime anywhere.
                                """

    }
   
}
