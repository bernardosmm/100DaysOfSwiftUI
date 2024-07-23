//
//  Checkpoint9.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 23/07/24.
//

import Foundation
class Checkpoint9: day {
    static func main() {
        func getRandomNumber(from array: [Int]?) -> Int {
            return array?.randomElement() ?? Int.random(in: 1...100)
        }
    }
}
