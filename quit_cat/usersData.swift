//
//  usersData.swift
//  quit_cat
//
//  Created by Gary on 2018/10/21.
//  Copyright © 2018 Gary. All rights reserved.
//

import Foundation
import UIKit

class usersData {
    
    var uID: String = ""
    var facebook: String = ""
    var google: String = ""
    var name: String = ""
    var age: Int = 0
    private var _birthday: String = "1234"

    
    var birthday: String{
        set{
            self._birthday = newValue
        }
        get{
            return self._birthday
        }
        
        
    }
    var smokeage: Int = 0
    var smokeaddiction: Int = 0
    var smokebrand: Int = 0
    var gold: Int = 0
    var score: Int = 0
    var fish: Int = 0
    var shit: Int = 0
    var userimage: UIImage = UIImage.init()
    
    func getbirthday() -> String {
        return _birthday
    }
    
    

}
