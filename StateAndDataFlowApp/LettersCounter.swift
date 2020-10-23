//
//  LettersCounter.swift
//  StateAndDataFlowApp
//
//  Created by VICTOR on 23.10.2020.
//

import Combine
import SwiftUI

class LettersCounter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<LettersCounter, Never>()
    
    var lettersNumber = 0
    var okIsDisable = true
    var numberColor = Color.red
    
    func lettersCounter(name: String) {
        lettersNumber = name.count
        if lettersNumber > 2 {
            okIsDisable = false
            numberColor = Color.green
        } else {
            okIsDisable = true
            numberColor = Color.red
        }
        objectWillChange.send(self)
    }
    
}
