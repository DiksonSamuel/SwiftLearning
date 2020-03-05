//
//  Register.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 07/02/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import SwiftUI
import RealmSwift

struct Register: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom, 10)
            TextField("Enter your emailId", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom, 10)
            TextField("Username", text: $username).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom, 10)
            SecureField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
             Spacer()
            Button(action: {
                onSubmitForm(name: self.name, email: self.email, username: self.username , password: self.password)
            }) {
                Text("Register")
            }
        }.padding(.horizontal, 15)
            .onAppear{
                let realm = try! Realm()

                
                let data = realm.objects(CurrentUser.self);

        }
    }
}

func onSubmitForm(name: String, email: String, username: String, password: String) {
    let currentUser = CurrentUser()
    currentUser.name = name
    currentUser.emailId = email
    currentUser.username = username
    Auth.register(currentUser: currentUser);
    
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: Home())
        window.makeKeyAndVisible()
    }
    
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
