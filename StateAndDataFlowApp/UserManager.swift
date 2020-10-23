//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 22.10.2020.
//
import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var isRegister: Bool = UserDefaults.standard.string(forKey: "user") == nil
        ? false
        : true
    
    var name = UserDefaults.standard.string(forKey: "user") ?? ""
    
    init() {}
    
    init(name: String) {
        self.name = name
    }
    
    func saveUser(name: String) {
        UserDefaults.standard.setValue(name, forKey: "user")
        print("User saved")
    }
    
    func removerUser(name: String) {
        UserDefaults.standard.removeObject(forKey: "user")
        isRegister = false
        self.name = ""
        print("User deleted")
    }
}
