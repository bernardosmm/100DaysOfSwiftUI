//
//  day2.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 22/05/24.
//

import Foundation

class day2: day {
    static func main(){
        var gameOver : Bool = false
        gameOver.toggle()
        print(gameOver)
        var isAuthenticated : Bool = false
        isAuthenticated = !isAuthenticated
        print(isAuthenticated)
        isAuthenticated = !isAuthenticated
        print(isAuthenticated)
        
        
        let firstPart : String = "Hello,"
        let secondPart : String = "world"
        let greeting : String = firstPart + secondPart
        print(greeting)
        
        let people : String = "Haters"
        let action : String = "hate"
        let lyrics : String = people + "gonna" + action
        
        let myName : String = "Bernardo"
        let myAge : Int = 19
        print("Hello! My name is \(myName) and i am \(myAge) years old")
    }
}
