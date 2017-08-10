//
//  StartViewController.swift
//  خلوتي
//
//  Created by Noura on 11/16/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Login_Button(_ sender: Any) {
        
        performSegue(withIdentifier: "Login", sender: nil)
        
    }// Log in
    
    @IBAction func SignUp_Button(_ sender: Any) {
        
        performSegue(withIdentifier: "SignUp", sender: nil)
        
    }//sign up
    
 
} // class 
