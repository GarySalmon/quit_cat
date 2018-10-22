//
//  ViewController.swift
//  quit_cat
//
//  Created by Gary on 2018/10/14.
//  Copyright © 2018 Gary. All rights reserved.
//

import UIKit
import Firebase
import Foundation

class ViewController: UIViewController {
    
    var db: Firestore!
    let userID:String = "N23K1DpIYFH5Q38MOunx"

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
        let birthday:String = queryBirthdayFunc()
        print(birthday)
    }
    
    
    
    //func queryName
    func queryNameFunc() -> String{
        var name:String = ""
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            name = DocumentSnapshot.get("name") as! String
        }
        return name
    }
    //func queryage
    func queryAgeFunc() -> Int{
        var age:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            age = DocumentSnapshot.get("age") as! Int
        }
        return age
    }
    //func queryBirthday
    func queryBirthdayFunc() -> String{
        var birthday:String = ""
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            birthday = DocumentSnapshot.get("birthday") as! String
        }
        return birthday
    }
    //func querySmokeage
    func querySmokeageFunc() -> Int{
        var smokeage:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            smokeage = DocumentSnapshot.get("smokeage") as! Int
        }
        return smokeage
    }
    //func querySmokeaddiction
    func querySmokeaddictionFunc() -> Int{
        var smokeaddiction:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            smokeaddiction = DocumentSnapshot.get("smokeaddiction") as! Int
        }
        return smokeaddiction
    }
    //func querySmokebrand
    func querySmokebrandFunc() -> String{
        var smokebrand:String = ""
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            smokebrand = DocumentSnapshot.get("smokebrand") as! String
        }
        return smokebrand
    }
    //func queryGold
    func queryGoldFunc() -> Int{
        var gold:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            gold = DocumentSnapshot.get("gold") as! Int
        }
        return gold
    }
    //func queryScore
    func queryScoreFunc() -> Int{
        var score:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            score = DocumentSnapshot.get("score") as! Int
        }
        return score
    }
    //func queryFish
    func queryFishFunc() -> Int{
        var fish:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            fish = DocumentSnapshot.get("fish") as! Int
        }
        return fish
    }
    //func queryShit
    func queryShitFunc() -> Int{
        var shit:Int = 0
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            shit = DocumentSnapshot.get("shit") as! Int
        }
        return shit
    }
    //func queryUserImage
    func queryUserImageFunc() -> String{
        var userimage:String = ""
        let queryRef = db.collection("Users").document(userID).collection("userdata").document("userdata")
        queryRef.getDocument { (DocumentSnapshot , Error) in
            guard let DocumentSnapshot = DocumentSnapshot else {
                print("Error \(Error!)")
                return
            }
            userimage = DocumentSnapshot.get("userimage") as! String
        }
        return userimage
    }
    
    
    
    
    
    
 
    
    
    
    
}










/*
struct UsersData {
    
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
*/
/*
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
*/
