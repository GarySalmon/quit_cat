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
    fileprivate let usersData = UsersData.init(dictionary:)

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
    
    @IBAction func jfsadoifjsiaodf(_ sender: Any) {
        
    }
    
    
    @IBAction func sadfjwoef(_ sender: Any) {
        queryFunc(userID: "N23K1DpIYFH5Q38MOunx")
    }
    
    
    
    //func createAccount
    func createAccountFunc(facebook: String , google: String , name: String , age: Int , birthday: String ,
                           smokeage: Int , smokeaddiction: Int , smokebrand: String ,
                           gold: Int , score: Int , fish: Int , shit: Int , useriamge: String){
        var ref: DocumentReference? = nil
        var userData: [String : Any] = [String : Any]()
        userData["uid"] = "ref" as String
        userData["facebook"] = "facebook" as String
        userData["google"] = "google" as String
        userData["name"] = "name" as String
        userData["age"] = 1232 as Int
        userData["birthday"] = "birthday" as String
        userData["smokeage"] = 18 as Int
        userData["smokeaddiction"] = 18 as Int
        userData["smokebrand"] = "smokebrand" as String
        userData["gold"] = 19 as Int
        userData["score"] = 124 as Int
        userData["fish"] = 18 as Int
        userData["shit"] = 18 as Int
        userData["userimage"] = "useriamge" as String
        
        ref = db.collection("Users").addDocument(data: ["uid" : "null"])
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
        userData["uid"] = tempUid as String
        var refUserdata: DocumentReference? = nil
        refUserdata = db.collection("Users").document(tempUid).collection("userdata").document("userdata")
        refUserdata?.setData(userData)
        { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("User Data update success")
            }
        }
        
        
        let alertController = UIAlertController(title: "Success", message: ref!.documentID , preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil))
        present(alertController,animated: true,completion: nil)
        
    }
    
    func queryFunc(userID: String){
        let docRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        docRef.getDocument { (document, error) in
            if let usersData = document.flatMap({
                $0.data().flatMap({ (data) in
                    return UsersData(dictionary: data)
                })
            }) {
                print("Users: \(usersData)")
                
            } else {
                print("Document does not exist")
            }
        }
    }
}

fileprivate struct UsersData {
    
    let uid:String?
    let facebook:String?
    let google:String?
    let name:String?
    let age:Int?
    let birthday:String?
    let smokeage:Int?
    let smokeaddiction:Int?
    let smokebrand:String?
    let gold:Int?
    let score:Int?
    let fish:Int?
    let shit:Int?
    let userimage:String?
    
    func ewrare() -> String{
        return self.facebook!
    }
    
        init?(dictionary: [String: Any]) {
            
        self.uid = dictionary["uid"] as? String
        self.facebook = dictionary["facebook"] as? String
        self.google = dictionary["google"] as? String
        self.name = dictionary["name"] as? String
        self.age = dictionary["age"] as? Int
        self.birthday = dictionary["birthday"] as? String
        self.smokeage = dictionary["smokeage"] as? Int
        self.smokeaddiction = dictionary["smokeaddiction"] as? Int
        self.smokebrand = dictionary["smokebrand"] as? String
        self.gold = dictionary["gold"] as? Int
        self.score = dictionary["score"] as? Int
        self.fish = dictionary["fish"] as? Int
        self.shit = dictionary["shit"] as? Int
        self.userimage = dictionary["userimage"] as? String
    }
}



