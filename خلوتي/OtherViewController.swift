//
//  OtherViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func money(_ sender: Any) {
        
        performSegue(withIdentifier: "ToMoney", sender: nil)
    }
 
    
    @IBAction func instraction(_ sender: Any) {
        
        performSegue(withIdentifier: "ToInstraction", sender: nil)
        
    }
    @IBAction func LogOutButton(_ sender: Any) {
// [i will check again! ]
        /*
     UserDefaults.standard.set(false,forKey:"isUserLoggedIn")
    UserDefaults.standard.synchronize()
        
        let myViewController: LoginViewController = self.storyboard!.instantiateInitialViewController("ViewController") as ViewController;
        let ApplDelegate  = UIApplication.shared.delegate as! AppDelegate
        
        AppDelegate.window?.rootViewController = myViewController
        AppDelegate.window?.makeKeyAndVisiable()
 
        
        
       // self.performSegue(withIdentifier : "loginView", sender: self);
*/
    }// logout button
 

    @IBAction func changeLangougeToEnglish(_ sender: Any) {
        // in later i will change langouge
    }
    
    
}// class
