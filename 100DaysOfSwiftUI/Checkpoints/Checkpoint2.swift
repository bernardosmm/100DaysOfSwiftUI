//
//  Checkpoint2.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 24/05/24.
//

import Foundation
class Checkpoint2: day {
    static func main() {
        let names : [String] = ["Bernardo", "Rebeca", "Sarah", "Paulo", "João", "Bernardo"]
        print(names.count)
        let uniqueNames = Set(names)
        print(uniqueNames.count)
    }
}
