//
//  ExpierDateViewController.swift
//  خلوتي
//
//  Created by Noura on 11/8/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit
let URL_GET_Expier :String = "http://localhost:8888/php/Expier.php"
class ExpierDateViewController: UIViewController {
// insert label
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // label.text = Expiered_date
         }// view load
    
    override func viewDidAppear(_ animated: Bool) {
        /*
         // 1- retrive data from server:
         let requestURL = NSURL(string: URL_GET_ExpierDate)
         
         
         //creating NSMutableURLRequest
         let request =  MutableURLRequest(url: requestURL! as URL )
         
         //setting the method to post
         request.httpMethod = "GET"
         
         //creating a task to send the post request
         let task = URLSession.shared.dataTask(with : request as URLRequest){
         data, response, error in
         
         //exiting if there is some error
         if error != nil{
         print("error is \(String(describing:error))")
         return }// if
         
         //parsing the response
         do {
         //converting resonse to NSDictionary
         var roomJSON: NSDictionary!
         // roomJSON =  try  JSONSerialization.JSONObject(with : data!, options: .mutableContainers) as? NSDictionary
         try JSONSerialization.jsonObject(with : data!, options: .mutableContainers) as? NSDictionary
         
         //getting the JSON array teams from the response
         let room_Info : NSArray = roomJSON ["room_Info"] as! NSArray
         //looping through all the json objects in the array teams
         for i in 0 ..< room_Info.count{
         
         let ExpierDate:String = room_Info[i]["end_date"] as! String!
         
         // to show data after retrive it
         //  label.text = ExpierDate
         
         //displaying the data
         print("Expier Date -> ", ExpierDate)
         print("===================")
         print("")
         }// loop
         }// do
         catch {
         print(error) }// catch
         }//executing the task
         task.resume()
         
         */
        
    } // Appear
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func back_button(_ sender: Any) {
        performSegue(withIdentifier: "toViewAfterExpierDate", sender: nil)
    }
    

}// end
