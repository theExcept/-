//
//  ViewMaleRoomsViewController.swift
//  خلوتي
//
//  Created by Noura on 11/17/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit
let GET_ROOMS :String = "http://localhost:8888/php/getRooms.php"

class ViewMaleRoomsViewController: UIViewController {

    @IBOutlet weak var Button_A: UIButton!
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
        super.viewDidLoad()
/*
 // 1-retrive data from db ::
 
 //created NSURL
 let requestURL = NSURL(string: GET_ROOMS)
 
 
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
 
 */
           }// load

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//
 
 
    @IBAction func back_button(_ sender: Any) {
 
        performSegue(withIdentifier: "AfterMbackToViewRoom", sender: nil)
    }
 
    @IBAction func Reserv_button(_ sender: Any) {
        performSegue(withIdentifier: "m_ToResForm", sender: nil)
    }
 
}// clas
