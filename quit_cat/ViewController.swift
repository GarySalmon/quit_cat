//
//  ViewController.swift
//  quit_cat
//
//  Created by Gary on 2018/10/14.
//  Copyright © 2018 Gary. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var db: Firestore!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        db = Firestore.firestore()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showMessage(sender: UIButton){
        
    }
    @IBAction func createAccount(_sender: Any){
        var ref: DocumentReference? = nil
        var userData: [String : AnyObject] = [String : AnyObject]()
        userData["uid"] = "ref" as AnyObject
        userData["facebook"] = "love892009@gmail.com" as AnyObject
        userData["google"] = "love892009@gmail.com" as AnyObject
        userData["name"] = "Gary" as AnyObject
        userData["age"] = "21" as AnyObject
        userData["birthday"] = "1997/08/10" as AnyObject
        userData["smokeage"] = "5" as AnyObject
        userData["smokeaddiction"] = "5" as AnyObject
        userData["smokebrand"] = "Caster" as AnyObject
        userData["gold"] = "9999" as AnyObject
        userData["score"] = "12301" as AnyObject
        userData["fish"] = "58" as AnyObject
        userData["shit"] = "10" as AnyObject
        userData["userimage"] = "XX" as AnyObject
        ref = db.collection("Users").addDocument(data: userData)
        { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        let tempUid = ref!.documentID
        ref?.updateData( ["uid": tempUid ])
        { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
            }
        }
        
        let alertController = UIAlertController(title: "Success", message: ref!.documentID , preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil))
        present(alertController,animated: true,completion: nil)
        
        
    }
    
}

