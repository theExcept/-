//
//  InstructionViewController.swift
//  خلوتي
//
//  Created by Noura on 11/16/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

class InstructionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back_button(_ sender: Any) {
        // move to Other page
    performSegue(withIdentifier: "backToOtherAfterInsteraction", sender: nil)
    }// back
 
}// end
