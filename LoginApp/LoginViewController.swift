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
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if loginTextField.text == "User" && passwordTextField.text == "1234" {
                    if let welcomeVC: WelcomeViewController = storyboard.instantiateViewController(identifier: "WelcomeVC") as? WelcomeViewController {
                        welcomeVC.welcomeName = loginTextField.text
                        self.present(welcomeVC, animated: true)
                    } else { return }
                } else {
                    showAlert(withTitle: "Invalid Login or Password", andMessage: "Please, enter correct login and password")
                    
                }
                loginTextField.text = ""
                passwordTextField.text = ""
            }
    
    
    @IBAction func showForgottenName() {
        showAlert(withTitle: "Oops!", andMessage: "Try: User")
    }
    
    
    @IBAction func showForgottenPassword() {
        showAlert(withTitle: "Oops!", andMessage: "Try: 1234")
    }
    
//    @IBAction func loginButtonPressed() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if loginTextField.text == "User" && passwordTextField.text == "1234" {
//
//            let welcomeVC = storyboard.instantiateViewController(withIdentifier: "WelcomeVC")
//            welcomeVC.
//            self.present(welcomeVC, animated: true)
//
//
//        } else {
//            showAlert(withTitle: "Invalid Login or Password", andMessage: "Please, enter correct login and password")
//        }
//    }
    
//    @IBAction func passData() {
//           let storyboard = UIStoryboard(name: "Main", bundle: nil)
//           guard let secondViewController = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else { return }
//           secondViewController.name = "Ivan"
//
//           show(secondViewController, sender: nil)
//       }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.welcomeName = loginTextField.text!
//    }
    
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



