//
//  extension + Button.swift
//  StateAndDataFlowApp
//
//  Created by VICTOR on 24.10.2020.
//

import SwiftUI

extension Button {
    func buttonStyle(color: Color) -> some View {
        modifier(buttonModifier(color: color))
    }
}

struct buttonModifier : ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
        )
    }
}
