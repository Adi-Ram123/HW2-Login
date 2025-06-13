//
//  ViewController.swift
//  RamaswamyAditya-HW2
//
//  Created by Ramaswamy, Aditya S on 6/13/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var pwdField: UITextField!
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if(userField != nil && pwdField != nil) {
            status.text = "\(userField.text) logged in"
        } else {
            status.text = "Invalid login"
        }
    }
    
}

