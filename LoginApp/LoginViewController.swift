//
//  ViewController.swift
//  LoginApp
//
//  Created by MAcbook on 06.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
            @IBAction func loginButtonPressed() {
                if loginTextField.text == "User" && passwordTextField.text == "1234" {
                    let welcomeVC = storyboard?.instantiateViewController(withIdentifier: "WelcomeVC")
                    self.present(welcomeVC!, animated: true)
                    
                } else {
                    showAlert(withTitle: "Invalid Login or Password", andMessage: "Please, enter correct login and password")
                }
            }
    
    
    @IBAction func showForgottenName() {
        showAlert(withTitle: "Oops!", andMessage: "Try: User")
    }
    
    
    @IBAction func showForgottenPassword() {
        showAlert(withTitle: "Oops!", andMessage: "Try: 1234")
    }
    
    
    

}

// MARK: - Alertions

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
 }



