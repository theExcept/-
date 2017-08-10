//
//  TestViewController.swift
//  خلوتي
//
//  Created by Noura on 11/16/1438 AH.
//  Copyright © 1438 King Fahad National Library. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    //URL to our web service
    let URL_SAVE_TEAM = "http://localhost:8888/php/userRegister.php"
    //inside button will put every thing::
    /*
     //created NSURL
     let requestURL = NSURL(string: URL_SAVE_TEAM)
     
     //creating NSMutableURLRequest
     let request = NSMutableURLRequest(URL: requestURL!)
     
     //setting the method to post
     request.HTTPMethod = "POST"
     
     ///[make sure change it]
     let userPHone = textFieldName.text
     let userPass = textFieldMember.text
     
     //// inside "" -> name attribute from DB
     // after ++ --> name assign it from above
     let postParameters = "phone="+userPhone!+"&password="+userPass!;
     
     //adding the parameters to request body
     request.HTTPBody = postParameters.dataUsingEncoding(NSUTF8StringEncoding)
     
     
     //creating a task to send the post request
     let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
     data, response, error in
     
     if error != nil{
     print("error is \(error)")
     return;
     }
     
     //parsing the response
     do {
     //converting resonse to NSDictionary
     let myJSON =  try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as? NSDictionary
     
     //parsing the json
     if let parseJSON = myJSON {
     
     //creating a string
     var msg : String!
     
     //getting the json response
     msg = parseJSON["message"] as! String?
     
     //printing the response
     print(msg)
     
     }
     } catch {
     print(error)
     }
     }
     //executing the task
     task.resume()
     }// button
 */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
