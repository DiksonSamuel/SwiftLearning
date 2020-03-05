//
//  Auth.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 14/02/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import Foundation
import RealmSwift

class CurrentUser: Object {
    @objc dynamic var name = ""
    @objc dynamic var emailId = ""
    @objc dynamic var username = ""
}
