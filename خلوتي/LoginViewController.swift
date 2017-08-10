//
//  LoginViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//
import Alamofire
import UIKit

class LoginViewController: UIViewController {
    //URL to our web service
    let URL_USER_LOGIN : String = "https://localhost:8888/php/login.php"
    
    @IBOutlet weak var Emai_Text: UITextField!
    @IBOutlet weak var PassText: UITextField!
    
    @IBAction func backToHome_button(_ sender: Any) {
        
        performSegue(withIdentifier: "backToHomeAfterLogin", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad() }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }

    @IBAction func LoginButton(_ sender: Any)  {
        let Email = Emai_Text.text
        let pass = PassText.text
        
        // check for empty Fields
        if (Email == ""){
            displayAlretMessage(messageUser:"جميع الحقول مطلوبة");
            return }
        else if (pass == ""){
            displayAlretMessage(messageUser:"جميع الحقول مطلوبة");
            return }
        /*
        // check for length number phone
        if ((phoneNo?.characters.count)! > 10){
            displayAlretMessage(messageUser:"طول رقم الجوال غير صحيح");
            return}
            
        else if( (phoneNo?.characters.count)! < 10){
            displayAlretMessage(messageUser:"طول رقم الجوال غير صحيح");
            return}
*/
        //getting the username and password
        let parameters: Parameters=[
            "email":Emai_Text.text!,
            "password":PassText.text!]
        
        //making a post request
 
       // Alamofire.request(URL_USER_LOGIN!, method: .post, parameters: parameters , encoding: JSONEncoding.default).responseString
           Alamofire.request(URL_USER_LOGIN, method: .post, parameters: parameters).responseJSON
            {
                (response) in
       
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                  let jsonData = result as? NSDictionary
                    
                    //if there is no error
                    if(!(jsonData?.value(forKey: "error") as! Bool)){
                        
                        //getting the user from response
                        let user = jsonData?.value(forKey: "user") as! NSDictionary
                        
                        //getting user values
                        let userEmail = user.value(forKey: "email") as! Int
                        let userPass = user.value(forKey: "password") as! String
                        
                        //saving user values to defaults
                        UserDefaults.standard.setValue(userEmail, forKey: "email")
                        UserDefaults.standard.setValue(userPass, forKey: "password")
        
                }// from getting user value
             }// jason
        }// for making post request
        
        // to move another pages ::
        self.performSegue(withIdentifier: "ToTabBar", sender: nil)

    }// button 
    
    func displayAlretMessage(messageUser:String) {//open

        let myAlret = UIAlertController(title:"تنبيه" , message :messageUser ,preferredStyle:UIAlertControllerStyle.alert)
        
        // assign ok for alert message
        let OKAction = UIAlertAction(title:"موافق" ,style: UIAlertActionStyle.default , handler :nil);
        
        myAlret.addAction(OKAction)
        self.present(myAlret ,animated:true , completion:nil);
    }// end display message func
    
    @IBAction func ForgetPass_Button(_ sender: Any) {
   performSegue(withIdentifier: "ForgetPass", sender: nil)
    } // ForgetPass Button
    
   
}// end whole
