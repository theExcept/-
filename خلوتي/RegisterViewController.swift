//
//  SignUpViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//
import Alamofire
import UIKit

class RegisterViewController: UIViewController{
    let url = URL (string:"https://localhost:8888/php/register.php")
  
    
    @IBOutlet weak var Text_email: UITextField!
    @IBOutlet weak var label: UILabel!// like belal for show message
    @IBOutlet weak var Text_pass: UITextField!
    @IBOutlet weak var Text_RPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()}

    @IBAction func SendButton(_ sender: Any)  {
        
               // check for empty Fields
            if (Text_email.text == "") {
                       displayAlretMessage( messageUser:"جميع الحقول مطلوبة");
            //displayAlretMessage(T:"تنبيه",messageUser:"جميع الحقول مطلوبة");
                return }
 
            else if (Text_pass.text == "") {
                      displayAlretMessage(  messageUser:"جميع الحقول مطلوبة");
           //displayAlretMessage(T:"تنبيه",messageUser:"جميع الحقول مطلوبة");

                return }
 
            else if (Text_RPass.text == ""){
                     displayAlretMessage( messageUser:"جميع الحقول مطلوبة");
                   //    displayAlretMessage(T:"تنبيه",messageUser:"جميع الحقول مطلوبة");

                return }
 
 // check if password not match
             if (Text_pass.text != Text_RPass.text){
              displayAlretMessage(  messageUser:" فضلا أعد إدخال كلمة المرور مرة أخرى ، غير متطابقة");
                //    displayAlretMessage(T:"تنبيه",messageUser:"جميع الحقول مطلوبة");
                return }
 /*
 // check for the length phone
 if ((phone.text?.characters.count)! > 10){
 displayAlretMessage(messageUser:"طول رقم الجوال غير صحيح");
 return}
 
 else if ((phone.text?.characters.count)! < 10){
 displayAlretMessage(messageUser:"طول رقم الجوال غير صحيح");
 return}
 */
        let parameters : Parameters = ["email" : Text_email.text! ,"password" :  Text_pass.text! ]
        // i'm given name for each var from DB

 // i'm taking this code from Belal Khan

   Alamofire.request(url!, method: .post, parameters: parameters , encoding: JSONEncoding.default).responseString {
    
       (response) in
            
                //printing response
                print(response)
    
            //getting the json value from the server
            if let result = response.result.value {
                
                //converting it as NSDictionary
                let jsonData = result as? NSDictionary
                
                self.label.text = jsonData?.value(forKey: "message") as! String?
            }// if
 
        }//responce
        
        displayAlretMessage( messageUser: "تم تسجيلك بنجاح!")
        
        // to omve another page !
        performSegue(withIdentifier: "ToLogin", sender: nil)
        }// button
    
        /*
        let myUrl = URL(string: "http://localhost:8888/php/userRegister.php")// -->OK
         
        
        var request = URLRequest(url:myUrl!)
        request.httpMethod = "POST"// Compose a query string
        
      //  let postString = "phone=\(userPhone)&password=\(userPass)";
        let postString = "phone=\(String(describing:userPhone))&password=\(String(describing:userPass)) "
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error = \(String(describing:error))")
                return
            }
        }// TASK
        
            //var error: NSError?
        //[maybe mean phone is PK]
        let data = userPhone?.data(using: String.Encoding.utf8)
       
         do {
        let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:AnyObject]
        //var json = JSONSerialization.JSONObjectWithData( data, options:.MutableContainers, error: &err) as? NSDictionary
        
       
        if let parseJSON = json {
                let resultValue = parseJSON["status"] as? String
                print("result: \(String(describing:resultValue))")
            
                var isUserRegistered:Bool = false;
                if(resultValue=="Success"){isUserRegistered = true;}
                
                var messageToDisplay:String = parseJSON["شكرا لك ، تم تسجيلك بنجاح!"] as! String!;
            //  var messageToDisplay:String = parseJSON["message"] as! String!;
            
            if(!isUserRegistered){
                messageToDisplay = parseJSON["message"] as! String!;}
 
            DispatchQueue.main.sync{
        
        //assign title for alert message
        let myAlret = UIAlertController(title:"تنبيه" , message : messageToDisplay ,preferredStyle:UIAlertControllerStyle.alert);
        
        // assign ok for alert message
                let  OKAction = UIAlertAction(title:"موافق" ,style: UIAlertActionStyle.default ){ action in
                    self.dismiss(animated: true, completion: nil)
                }//action in
        
        myAlret.addAction(OKAction);
        self.present(myAlret ,animated:true , completion:nil);
        
            }//DispatchQueue.main.sync
               }//BIG IF
                  }// do
       catch
            //let error, as Error?
        {
            print(error)
        }// catch
        
        task.resume()
            
         // display conformation message
        
         let myAlret = UIAlertController(title:"شـكرا لك " ,message :"  تم تسجيلك بنجاح!" ,
preferredStyle:UIAlertControllerStyle.alert);
         
         let  OKAction = UIAlertAction(title:"موافق" ,style:
         UIAlertActionStyle.default ){ action in
         self.dismiss(animated: true, completion: nil)
         }//action in
         
         myAlret.addAction(OKAction);
         self.present(myAlret ,animated:true , completion:nil);
       
        performSegue(withIdentifier :"ToLogin" , sender : nil)
        */
 
    func displayAlretMessage( messageUser:String){//open
        let myAlret = UIAlertController(title:"تنبيه" , message :messageUser ,preferredStyle:UIAlertControllerStyle.alert)
        
        // assign ok for alert message
        let OKAction = UIAlertAction(title:"موافق" ,style: UIAlertActionStyle.default , handler :nil);
        
        myAlret.addAction(OKAction)
        self.present(myAlret ,animated:true , completion:nil);
   }// end display message func
    
    @IBAction func BackTo(_ sender: Any) {
        performSegue(withIdentifier: "backToHome1", sender: self)
    }


} // CLASS
