//
//  ForgetPasswordViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
    
// insert Email::
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
    
     @IBAction func SendButton(_ sender: Any) {
     /*
     let UserPhone = phone.text
     
     if (UserPhone == ""){
     // display warnning message
        displayMessage(userMessage : "الرجاء كتابة رقمك")
     return
     }// end if
     
       if (UserPhone?.characters.count > 10){
        displayMessage(userMessage : "طول رقم الجوال غير صحيح")
        return
       }
       else if (UserPhone?.ccharacters.count < 10){
        displayMessage(userMessage : "طول رقم الجوال غير صحيح")
        return
        }
 */
        // check if the number is same on DB or not !
        
        performSegue(withIdentifier : "BackToHomeAgain", sender:nil)
        
    }// button   
     
     func displayMessage(userMessage : String){
     let myAlert = UIAlertController(title:"تنبيه" , message :userMessage ,preferredStyle:UIAlertControllerStyle.alert);
     
     let OKAction = UIAlertAction(title :"موافق" ,style: UIAlertActionStyle.default){
     action in
     self.dismiss(animated: true, completion: nil)
     }
     myAlert.addAction(OKAction)
        
     self.present(myAlert , animated: true , completion: nil)
     
     }//displayMessage
     
     // when i put back button::
    //performSegue(withIdentifier : "backToLogin", sender:nil)


}// end whole
