//
//  day13.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 17/07/24.
//

import Foundation

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol CanBeElectric {
}

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}



class day13 {
    static func main() {
        
        struct Motorcycle: Vehicle, CanBeElectric {
            let name = "Motorcycle"
            var currentPassengers = 2
            
            func estimateTime(for distance: Int) -> Int {
                distance / 40
            }
            
            func travel(distance: Int) {
                print("I'm riding \(distance)km")
            }
        }
        
        
        struct Bicycle: Vehicle {
            let name = "Bicycle"
            var currentPassengers = 1
            func estimateTime(for distance: Int) -> Int {
                distance / 10
            }
            
            func travel(distance: Int) {
                print("I'm cycling \(distance)km")
            }
        }
        
        struct Car: Vehicle {
            let name = "Car"
            var currentPassengers = 1
            func estimateTime(for distance: Int) -> Int {
                return distance / 50
            }
            
            func travel(distance: Int) {
                print("I'm driving \(distance)km")
            }
            
            func openSunroof() {
                print("It's a nice day!")
            }
        }
        
        func commute(distance: Int, using vehicle: Vehicle) {
            if vehicle.estimateTime(for: distance) > 100 {
                print("That's too slow! I'll try a different vehicle")
            } else {
                vehicle.travel(distance: distance)
            }
        }
        
        func getTravelEsrimates(using vehicles: [Vehicle], distance: Int) {
            for vehicle in vehicles {
                let estimate = vehicle.estimateTime(for: distance)
                print("\(vehicle.name): \(estimate) hous to travel \(distance)km")
            }
        }
        
        let car = Car()
        commute(distance: 100, using: car)
        
        let bike = Bicycle()
        commute(distance: 50, using: bike)
        
        let motorcycle = Motorcycle()
        commute(distance: 90, using: motorcycle)
        
        getTravelEsrimates(using: [car, bike, motorcycle], distance: 150)
        
        let lyrics = """
I'm a puppet on a string
Tracy Island, time-travelin' diamond cutter-shaped heartaches
Come to find you four in some velvet mornin' years too late
She's a silver linin', lone ranger ridin' through an open space
In my mind, when she's not right there beside me
"""
        
        print(lyrics.lines.count)
        
        struct Book {
            let title: String
            let pageCount: Int
            let readingHours: Int
            
            init(title: String, pageCount: Int) {
                self.title = title
                self.pageCount = pageCount
                self.readingHours = pageCount / 50
            }
        }
        
        let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
    }
}

