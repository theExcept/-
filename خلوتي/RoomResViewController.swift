//
//  RoomResViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//
import Alamofire
import UIKit

class RoomResViewController: UIViewController {
let myUrl = URL(string: "http://localhost:8888/php/insertRev.php ")
    
    @IBOutlet weak var TextName: UITextField!
    @IBOutlet weak var ReqDateText: UITextField!
    @IBOutlet weak var DOBText: UITextField!
    @IBOutlet weak var IDText: UITextField!
    @IBOutlet weak var nationalityText: UITextField!
    @IBOutlet weak var SearchText: UITextField!
    @IBOutlet weak var genderText: UITextField!
    @IBOutlet weak var degreeText: UITextField!
    @IBOutlet weak var CareerText: UITextField!
    @IBOutlet weak var workText: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func back_button(_ sender: Any) {
        
        performSegue(withIdentifier: "backToRooms", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButton(_ sender: Any) {
        
        // check Empty Fields
        if (TextName.text == "") {
            displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
         return }
         
        else if (ReqDateText.text == "") {
            displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
            return ;}
            
        else if ( DOBText.text == ""){
         displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
         return ;}
         
         else if ( IDText.text == ""){
            displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
            return }
         
        else if ( nationalityText.text == ""){
         displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
         return }
         
         else if (genderText.text == "") {
            displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
            return }
         
        else if (degreeText.text == "") {
         
         displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
         return}
            
          else if(SearchText.text == ""){
            displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
            return ;
        }//all field requier
          
        else if (CareerText.text == "") {
         displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
         return ;}
         
         else if(workText.text == "") {
            displayAlretMessage(T: "تنبيه" , messageUser:"جميع الحقول مطلوبة");
            return ;
        }//all field requier
        
        let parameters: Parameters=[
            "name":TextName.text!,
            "DoB":DOBText.text!,
            "ID":IDText.text!,
            "nationality":nationalityText.text! ,
           "degree": degreeText.text! ,
           "search" :SearchText.text! ,
           "career" : CareerText.text!,
           "work" : workText.text!
        ]
        // store data on server
        Alamofire.request(myUrl!, method: .post, parameters: parameters , encoding: JSONEncoding.default).responseString
            { (response) in
            
            //printing response
            print(response)
                
                 //getting the json value from the server
                 if let result = response.result.value {
                 
                 //converting it as? NSDictionary
                 let jsonData = result as! NSDictionary
                 self.label.text = jsonData.value(forKey: "message") as! String?
                 }// if
                
        }//responce

        // display conformation message
        
        displayAlretMessage(T: "شكرا" , messageUser:"تم تسجيلك بنجاح ");

       // To move to warinty page
        self.performSegue(withIdentifier: "ToWarinty", sender: nil)
    }// send button
    
    func displayAlretMessage(T: String , messageUser:String)
    {//open
        
        //assign title for alert message
        let myAlret = UIAlertController(title:T , message :messageUser ,preferredStyle:UIAlertControllerStyle.alert);
        
        // assign ok for alert message
        let OKAction = UIAlertAction(title:"موافق" ,style:
            UIAlertActionStyle.default , handler :nil);
        
        myAlret.addAction(OKAction);
        
        self.present(myAlret ,animated:true , completion:nil);
        
        
    }// display func
    


}// end whole
