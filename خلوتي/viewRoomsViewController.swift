//
//  viewRoomsViewController.swift
//  خلوتي
//
//  Created by Noura on 11/7/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

class viewRoomsViewController: UIViewController  {
    
 
    @IBOutlet weak var Female: UILabel!
    
    @IBOutlet weak var Male: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Femal_Room(_ sender: Any) {
      
        performSegue(withIdentifier: "ToFemaleRooms", sender: nil)
        
    } // female
    
    @IBAction func Male_Room(_ sender: Any) {
        
    performSegue(withIdentifier: "ToMaleRooms", sender: nil)
    
    } // male
    
    @IBAction func back_button(_ sender: Any) {
        performSegue(withIdentifier: "backToCond", sender: nil)
    }
    
    
}// end whole
