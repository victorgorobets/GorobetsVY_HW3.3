//
//  ButtonOkView.swift
//  StateAndDataFlowApp
//
//  Created by VICTOR on 23.10.2020.
//

import SwiftUI

struct ButtonOK: View {
    
    @EnvironmentObject var user: UserManager
    @Binding var name: String
    
    var body: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
    }
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister = true
            user.saveUser(name: name)
        }
    }
}

struct ButtonOK_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOK(name: .constant("Test"))
    }
}
