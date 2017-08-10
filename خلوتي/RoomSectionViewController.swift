//
//  RoomSectionViewController.swift
//  خلوتي
//
//  Created by Noura on 11/8/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit
let URL_GET_Loc :String = "https://localhost:8888/php/getdat.php"
class RoomSectionViewController: UIViewController {
// insert label
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // show data
        // label.text = ReqLocation
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        /*
        // retrive data from server:
        let requestURL = NSURL(string: URL_GET_type)
        
        
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
                    
                    let RoomLoc : String = room_Info[i]["room_name"] as! String!
                    
                    // to show data after retrive it
                    //  label.text = RoomLoc
                    
                    //displaying the data
                    print("Room Location -> ", RoomLoc)
                    print("===================")
                    print("")
                }// loop
            }// do
            catch {
                print(error) }// catch
        }//executing the task
        task.resume()
        */
    }// view appear
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back_button(_ sender:
        Any) {
    
performSegue(withIdentifier: "toViewAfterRoomLocation", sender: nil)
    }
 

}// class
