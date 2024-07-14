//
//  day11.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 14/07/24.
//

import Foundation

class day11: day {
    static func main() {
        struct BankAccount {
            private var funds = 0
            mutating func deposit(amount: Int) {
                funds += amount
            }
            mutating func withdraw(amount: Int) -> Bool {
                if funds >= amount {
                    funds -= amount
                    return true
                } else {
                    return false
                }
            }
        }
        struct School {
            static var studentCount = 0
            
            static func add(student: String) {
                print("\(student) joined the school.")
                studentCount += 1
            }
        }
        School.add(student: "Taylor Swift")
        print(School.studentCount)
        
        struct AppData {
            static let version = "1.3 beta 2"
            static let saveFilename = "settings.json"
            static let homeURL = "htps://www.hackingwithswift.com"
        }
    }
}
