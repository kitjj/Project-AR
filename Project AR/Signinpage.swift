//
//  Signinpage.swift
//  Project AR
//
//  Created by Kurtis Chueng on 9/6/2022.
//

import SwiftUI
import GoogleSignIn

struct Signinpage: View {
    
    GIDSignIn.sharedInstance.signIn(
       with: signInConfig,
       presenting: self
   ) { user, error in
       guard error == nil else { return }
       guard let user = user else { return }

       // Your user is signed in!
   }

    var body: some View {
        VStack {
            Text("Sign in")
                .font(.largeTitle)
                .bold()
            Text("Sign up with email, Apple or Google")
            HStack {
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
        }
    }
}

struct Signinpage_Previews: PreviewProvider {
    static var previews: some View {
        Signinpage()
    }
}
