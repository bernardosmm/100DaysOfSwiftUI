//
//  Checkpoint8.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 22/07/24.
//

import Foundation

protocol Building {
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var estateAgent: String { get set }
    
    func printSalesSummary()
}

class Checkpoint8: day {
    static func main() {
        struct House: Building {
            var numberOfRooms: Int
            var cost: Int
            var estateAgent: String
            
            func printSalesSummary() {
                print("House for sale with \(numberOfRooms), costing \(cost) dollars. Contact agent: \(estateAgent)")
            }
        }
        
        struct Office: Building {
            var numberOfRooms: Int
            var cost: Int
            var estateAgent: String

            func printSalesSummary() {
                print("Office for sale with \(numberOfRooms) rooms, costing \(cost) dollars. Contact agent: \(estateAgent).")
            }
        }
        let myHouse = House(numberOfRooms: 4, cost: 500000, estateAgent: "Alice")
        myHouse.printSalesSummary()

        let myOffice = Office(numberOfRooms: 10, cost: 1500000, estateAgent: "Bob")
        myOffice.printSalesSummary()
    }
}
