//
//  ViewFemelRoomsViewController.swift
//  خلوتي
//
//  Created by Noura on 11/17/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit
let get_Rooms:String = "https://localhost:8888/php/getdat.php"

class ViewFemelRoomsViewController: UIViewController {

    @IBOutlet weak var button_A: UIButton!
    @IBOutlet weak var button_B: UIButton!
    @IBOutlet weak var button_C: UIButton!
    @IBOutlet weak var button_D: UIButton!
    @IBOutlet weak var button_E: UIButton!
    @IBOutlet weak var button_F: UIButton!
    @IBOutlet weak var button_G: UIButton!
    @IBOutlet weak var button_H: UIButton!
    @IBOutlet weak var button_I: UIButton!
    @IBOutlet weak var button_J: UIButton!
    
    
    override func viewDidLoad() {
      
        // wehen user click on avaliable rooms will save this action save value
        
        super.viewDidLoad()
        /*
        // 1-retrive data from db ::
        
        //created NSURL
        let requestURL = NSURL(string: get_Rooms)
        
        
        //creating NSMutableURLRequest
        let request = NSMutableURLRequest(url : requestURL! as URL )
        
        //setting the method to post
        request.httpMethod = "GET"
        
        //creating a task to send the post request
        let task = URLSession.shared.dataTask(with : request as URLRequest ){
            data, response, error in
            
            //exiting if there is some error
            if error != nil{
                print("error is \(String(describing:error))")
                return;
            }
            //parsing the response
            do {
                //converting resonse to NSDictionary
                var roomJSON: NSDictionary!
                roomJSON =  try JSONSerialization.jsonObject(with :data!, options: .mutableContainers) as? NSDictionary
                
                //getting the JSON array teams from the response
                let rooms: NSArray = roomJSON["rooms"] as! NSArray
                
                //looping through all the json objects in the array teams
                for i in 0 ..< rooms.count{
                    
                    //getting the data at each index
                    let RoomName:String = rooms[i]["name"] as! String!
                    
                    //displaying the data
                    print("Room name: -> ", RoomName)
                    print("===================")
                    
                }// loop
                
            }// do
            catch {
                print(error)
            }
        } //executing the task
        
        task.resume()
        
        // then do my code for button ===============================
         button_A.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControlEvents#>)
       // button_B
        //button_C
        //button_D
        //button_E
        //button_F
        //button_G
        //button_H
        //button_I
        //button_J
        
 
        
        }// view Load

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // retrive data from DB
        
        
        
        // i do my code
        
        //roomID and state --> get from DB
        /*
         let button = UIButton(type: UIButtonType.system) as UIButton
         
         let xPostion:CGFloat = 50
         let yPostion:CGFloat = 100
         let buttonWidth:CGFloat = 150
         let buttonHeight:CGFloat = 45
         
         // Position button within a view
         button.frame = CGRect(x: xPostion, y: yPostion, width: buttonWidth, height: buttonHeight)
         
         // Set UIButton title for each Rooms[maybe generate it on array inside it name of each room!]
         button.setTitle("حـجـز", for: UIControlState.normal)
         
         
         if (roomID == 1 || roomID <= 10){
         // female[1-10 number of romms only for F]
         
         if (state == "Available"){
         button.isEnabled = true
         button.backgroundColor = UIColor.green
         
         }// Avaliable --> green[f]
         
         else if (state == "Busy"){
         button.isEnabled = false
         button.backgroundColor = UIColor.red
         }// Busy --> red[f]
         
         }// female block
         
         if (roomID == 11 || roomID <= 20){
         //male[11-20 number of romms only for M]
         
         if (state == "Available" ){
         button.isEnabled = true
         button.backgroundColor = UIColor.green
         
         }// Avaliable --> green[m]
         
         else if (state == "Busy"){
         button.isEnabled =  falsa ;
         button.backgroundColor = UIColor.red
         }// Busy --> red[m]
         
         }// male block
         */
        
        */
        
    }// view load
  
    
    @IBAction func back_button(_ sender: Any) {
        performSegue(withIdentifier: "AfterFbackToViewRoom", sender: nil)}
    
    @IBAction func Reserv_button(_ sender: Any) {
    performSegue(withIdentifier: "f_ToResForm", sender: nil)
    }
    
    
}// class
