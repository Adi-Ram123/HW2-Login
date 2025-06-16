//
//  ViewController.swift
//  RamaswamyAditya-HW2
//
//  Created by Ramaswamy, Aditya S on 6/13/25.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var pwdField: UITextField!
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userField.delegate = self
        pwdField.delegate = self
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if(userField.text != "" && pwdField.text != "") {
            status.text = "\(userField.text!) logged in"
        } else {
            status.text = "Invalid login"
        }
    }
    
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
       
       // Called when the user clicks on the view outside of the UITextField

       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
       }
    
}

