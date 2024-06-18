//
//  Checkpoint5.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 17/06/24.
//

import Foundation
class Checkpoint5: day {
    static func main() {
        let luckyNumbers = [7, 4, 38, 21, 16, 15,12, 33, 31, 49]

        func printLuckyNumbers(_ dataSet: [Int]) {
            dataSet.filter { !$0.isMultiple(of: 2) }
                .sorted()
                .map { print("\($0) is a lucky number") }
        }

        printLuckyNumbers(luckyNumbers)
    }
}
