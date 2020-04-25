//
//  SigninView.swift
//  To-Do-Firebase
//
//  Created by Kevin Chen on 4/25/2020.
//  Copyright © 2020 New York University. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var coordinator: SignInWithAppleCoordinator?
    
    var body: some View {
        VStack {
            Text("Welcome! Sign In")
            SignInWithAppleButton()
                .frame(width: 280, height: 45)
                .onTapGesture {
                    self.coordinator = SignInWithAppleCoordinator()
                    if let coordinator = self.coordinator {
                        coordinator.startSignInWithAppleFlow {
                            print("You successfully signed in")
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
            }
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
