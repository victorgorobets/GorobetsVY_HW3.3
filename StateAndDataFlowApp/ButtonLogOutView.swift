//
//  LogOutButtonView.swift
//  StateAndDataFlowApp
//
//  Created by VICTOR on 23.10.2020.
//

import SwiftUI

struct ButtonLogOutView: View {
  
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: { logOut() }) {
            Text("Log out")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.buttonStyle(color: .blue)
    }
    
    func logOut() {
        user.removerUser(name: user.name)
    }
}

struct ButtonLogOutView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLogOutView()
    }
}
