//
//  Checkpoint3.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 28/05/24.
//

import Foundation
class Checkpoint3: day {
    static func main() {
        for i in 1...100 {
            if i.isMultiple(of: 3){
                print("Fizz")
            } else if i.isMultiple(of: 5) {
                print("Buzz")
            } else if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
                print("Fizz Buzz")
            } else {
                print(i)
            }
        }
    }
}
