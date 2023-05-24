//
//  ViewController.swift
//  Trendii
//
//  Created by Yoshee on 5/7/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //Button actions
    @IBAction func SignIn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SignIn", sender: nil)
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Register", sender: nil)
    }
    
    @IBAction func Recover(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Recover", sender: nil)
    }
    // Outlets to initialize delegate
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    // View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
        
        
        
        // Do any additional setup after loading the view.
    }
  
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    //Textfield delegate Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //this method is for when return is pressed on keyboard.
        
        return self.usernameTextField.resignFirstResponder() || self.passwordTextField.resignFirstResponder()
    }
    
    
    //Touch Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
}

