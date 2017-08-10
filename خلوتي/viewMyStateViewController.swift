//
//  viewMyStateViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

// in this page each button will move to another page only!
class viewMyStateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()}
    
    
    @IBAction func ReqID_button(_ sender: Any) {
    // move conatnt with it to label in Req Id
        performSegue(withIdentifier: "Req_ID", sender: nil)
    }// end Req ID
    
      func RoomType_button(_ sender: Any) {
       performSegue(withIdentifier: "Room_type", sender: nil)
    }// room type
    
    @IBAction func RoomLocation_button(_ sender: Any) {
     performSegue(withIdentifier: "Room_Loc", sender: nil)
    }// room locaation
    
    @IBAction func ResDate_button(_ sender: Any) {
         performSegue(withIdentifier: "Res_date", sender: nil)
    }// reservation data
    
    @IBAction func ExpierDate_button(_ sender: Any) {
         performSegue(withIdentifier: "Expier_date", sender: nil)
    }// Expiered date
    
 
}// end whole
