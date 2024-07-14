//
//  Checkpoint6.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 14/07/24.
//

import Foundation
class Checkpoint6: day {
    static func main() {
        struct Car {
            let model: String
            let numberOfSeats: Int
            var currentGear: Int

            mutating func shiftUp() {
                if currentGear < 10 {
                    currentGear += 1
                } else {
                    print("Cannot shift up. Already in the highest gear.")
                }
            }

            mutating func shiftDown() {
                if currentGear > 1 {
                    currentGear -= 1
                } else {
                    print("Cannot shift down. Already in the lowest gear.")
                }
            }
        }
    }
}
