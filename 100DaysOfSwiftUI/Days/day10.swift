//
//  day10.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 19/06/24.
//

import Foundation
class day10: day {
    static func main() {
        struct Album {
            let title: String
            let artist: String
            let year: Int
            
            func printSummary() {
                print("\(title) (\(year)) by \(artist)")
                
            }
        }
        let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
        let wings = Album(title: "Wings", artist: "BTS", year: 2016)
        
        print(red.title)
        print(wings.title)
        
        red.printSummary()
        wings.printSummary()
        
        struct Employee {
            let name: String
            var vacationRemaining: Int
            
           mutating func takeVacation(days: Int) {
                if vacationRemaining > days {
                    vacationRemaining -= days
                    print("Im going on vacation")
                    print("Days remaining: \(vacationRemaining)")
                } else {
                    print("Oops! There aren't enough days remaining")
                }
            }
        }
        var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
        archer.takeVacation(days: 5)
        print(archer.vacationRemaining)
        
        let a: Int = 1
        let b: Double = 2.0
        let c = Double(a) + b
        
        struct Employee2 {
            let name2: String
            var vacationAllocated = 14
            var vacationTaken = 0
            
            var vacationRemaining2: Int {
                vacationAllocated - vacationTaken
            }
        }
        var archer2 = Employee2(name2: "Sterling Archer", vacationAllocated: 14)
        archer2.vacationTaken += 4
        print(archer.vacationRemaining)
        archer2.vacationTaken += 4
        print(archer.vacationRemaining)
        
        struct Game {
            var score = 0 {
                didSet {
                    print("Score is now \(score)")
                }
            }
        }

        var game = Game()
        game.score += 10
        game.score -= 3
        game.score += 1
        
        struct App {
            var contacts = [String]() {
                willSet {
                    print("Current value is: \(contacts)")
                    print("New value will be: \(newValue)")
                }

                didSet {
                    print("There are now \(contacts.count) contacts.")
                    print("Old value was \(oldValue)")
                }
            }
        }

        var app = App()
        app.contacts.append("Adrian E")
        app.contacts.append("Allen W")
        app.contacts.append("Ish S")
        
        struct Player {
            let name: String
            let number: Int

            init(name: String) {
                self.name = name
                number = Int.random(in: 1...99)
            }
        }

        let player = Player(name: "Megan R")
        print(player.number) 
    }
}
