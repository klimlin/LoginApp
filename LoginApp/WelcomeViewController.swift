//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by MAcbook on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var welcomeName: String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(String(welcomeName))!"
    }
    

    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
