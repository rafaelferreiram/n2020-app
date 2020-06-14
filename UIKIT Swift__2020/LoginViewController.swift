//
//  LoginViewController.swift
//  UIKIT Swift__2020
//
//  Created by Rafael on 6/14/20.
//  Copyright © 2020 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var senhaTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.senhaTxt.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }
    

}
