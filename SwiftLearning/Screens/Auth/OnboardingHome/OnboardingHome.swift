//
//  OnboardingHome.swift
//  SwiftLearning
//
//  Created by Dikson Samuel on 06/02/20.
//  Copyright © 2020 Dikson Samuel. All rights reserved.
//

import SwiftUI

struct OnboardingHome: View {
    
     @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Login()) {
                    Text("Login")
                }
                NavigationLink(destination: Register()) {
                    Text("Register")
                }
            }
        }
    }
}

struct OnboardingHome_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingHome()
    }
}
