//
//  Auth.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 14/02/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import Foundation
import RealmSwift

class Auth {
    
    static func register( currentUser: CurrentUser ) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(currentUser)
        }
        print(currentUser.name);
    }
    
    static func deleteCurrentUser() {
        let realm = try! Realm()
        let data = realm.objects(CurrentUser.self)[0];
        try! realm.write {
            realm.delete(data);
        }
    }

}
