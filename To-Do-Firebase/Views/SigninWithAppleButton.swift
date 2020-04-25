//
//  SigninWithAppleButton.swift
//  To-Do-Firebase
//
//  Created by Kevin Chen on 4/25/2020.
//  Copyright © 2020 New York University. All rights reserved.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton: UIViewRepresentable {
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(type: .signIn, style: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
    }
}
