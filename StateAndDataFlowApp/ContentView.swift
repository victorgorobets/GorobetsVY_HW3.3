//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 21.10.2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var timer = TimeCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            Spacer()
            ButtonTimerView(timer: timer)
            Spacer()
            ButtonLogOutView()
        }
    }
}
struct ButtonTimerView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.buttonStyle(color: .red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

