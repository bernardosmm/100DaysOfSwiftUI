//
//  day12.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 15/07/24.
//

import Foundation
class day12: day {
    static func main() {
        class Game {
            var score = 0  {
                didSet {
                    print("Score now is \(score)")
                }
            }
        }
        var newGame = Game()
        newGame.score+=10
        
        class Paiting {
            var title: String
            var artist: String
            var paintType: String
            
            init(title: String, artist: String, paintType: String) {
                self.title = title
                self.artist = artist
                self.paintType = paintType
            }
        }
        
        class VideoGame {
            var hero: String
            var enemy: String
            init(heroName: String, enemyName: String) {
                self.hero = heroName
                self.enemy = enemyName
            }
        }
        let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")
        
        class Employee {
            let hours: Int
            
            init(hours: Int) {
                self.hours = hours
            }
            func printSummary() {
                print("I work \(hours) a day.")
            }
        }
        
        final class Developer: Employee {
            func work() {
                print("I'm writing codes for \(hours) hours.")
            }
            
            override func printSummary() {
                print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours aguing about whter code should be indented using tabs or spaces.")
            }
        }
        
        final class Manager: Employee {
            func work() {
                print("I'm going to meetings for \(hours) hours.")
            }
        }
        
        let robert = Developer(hours: 8)
        let joseph = Manager(hours: 10)
        robert.work()
        joseph.work()
        
        let novall = Developer(hours: 8)
        novall.printSummary()
        
        class Vehicle {
            let isElectric: Bool
            
            init(isElectric: Bool) {
                self.isElectric = isElectric
            }
        }
        
        class Car: Vehicle {
            let isConvertible = false
        }
        
        let teslaX = Car(isElectric: true)
        
        class HandBang {
            var price : Int
            init(price: Int) {
                self.price = price
            }
        }
        
        class DesignerHandBang: HandBang {
            var brand: String
            
            init(brand: String, price: Int) {
                self.brand = brand
                super.init(price: price)
            }
        }
        
        class Product {
            var name: String
            
            init(name: String) {
                self.name = name
            }
        }
        
        class Book: Product {
            var isbn: String
            
            init(name: String, isbn: String) {
                self.isbn = isbn
                super.init(name: name)
            }
        }
        
        class User {
            var username = "Taylor"
        }
        
        var user1 = User()
        var user2 = User()
        
        print(user1.username)
        print(user2.username)
        
        class Author {
            var name = "Anonymous"
        }
        var dickens = Author()
        dickens.name = "Charles Dickens"
        var austen = dickens
        austen.name = "Jane Austen"
        print(dickens.name)
        print(austen.name)
        
        class User2 {
            let id: Int
            
            init(id: Int) {
                self.id = id
                print("User \(id): I'm still alive!")
            }
            
            deinit {
                print("User \(id): I'm dead!")
            }
        }
        
        var users = [User2]()
        
        for i in 1...3 {
            let user = User2(id: i)
            print("User \(user.id): I'm in control!")
            users.append(user)
        }
        print("Loop is finished!")
        users.removeAll()
        print("Array is clear!")
        
        
    }
}
