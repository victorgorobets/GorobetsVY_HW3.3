//
//  RegisteredView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 21.10.2020.
//

import SwiftUI

struct RegisteredView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManager
    @ObservedObject private var letters = LettersCounter()
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name, perform: { _ in
                        letters.lettersCounter(name: name)
                    })
                Text("\(letters.lettersNumber)")
                    .foregroundColor(letters.numberColor)
                    .bold()
                    .padding(10)      
            }
            ButtonOK(name: $name).disabled(letters.okIsDisable)
        }
    }
}

struct RegisteredView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredView()
            .environmentObject(UserManager())
    }
}

