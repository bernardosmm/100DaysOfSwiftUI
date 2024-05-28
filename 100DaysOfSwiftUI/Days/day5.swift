//
//  day5.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 27/05/24.
//

import Foundation

class day5: day {
    static func main() {
        let score = 50
        if score > 50 {
            print("Approved")
        }
        let speed = 88
        let percentage = 85
        let age = 18
        if speed >= 88 {
            print("Where we are going, we don't need roads")
        }
        if percentage > 85 {
            print("Sorry, ou failed the test")
        }
        if age >= 18 {
            print("You're elegible to vote")
        }
        let myName: String = "Bernardo"
        let friendName: String = "Paulo"
        if myName < friendName {
            print("It's \(myName) vs \(friendName)")
        }
        if myName > friendName {
            print("It's \(friendName) vs \(myName)")
        }
        var numbers: [Int] = [1,2,3]
        numbers.append(4)
        if numbers.count > 3 {
            numbers.removeAll()
        }
        print(numbers)
        
        let name: String = "Alex Turner"
        if name != "Anonymous" {
            print("Welcome, \(name)")
        }
        var username: String = "Bernas"
        if username.isEmpty {
            username == "Anonymous"
        }
        print("Welcome, \(username)")
        
        var idade: Int = 16
        if idade >= 18 {
            print("You can vote in the next election")
        } else {
            print("You cannot vote in the next election")
        }
        let a = true
        let b = true
        if a {
            print("Code to run if a is a true value")
        } else if b {
            print("Code to run if b is a true value")
        } else {
            print("Code to run if b and a are false")
        }
        let temp = 25
        if temp > 25 && temp < 30 {
            print("It's a nice day")
        }
        
        let userAge = 14
        var hasParentalConsent = true
        if userAge >= 18 || hasParentalConsent == true {
            print("You can buy the game")
        }
        enum TransportOption {
            case airplane, helicopter, bicycle, car, scooter
        }
        let transport = TransportOption.airplane
        
        if transport == .airplane || transport == .helicopter {
            print("Let's fly")
        } else if transport == .car {
            print("time to get stucked on traffic")
        } else if transport == .bicycle {
            print("I hope there is a bike path")
        } else {
            print("I am going to hire a scooter now")
        }
        enum weather {
            case sun, rain, snow, wind, unknown
        }
        let forecast = weather.rain
        
        switch forecast {
        case .sun:
            print("It should be a nice day")
        case .rain:
            print("Pack un umbrella")
        case .wind:
            print("Wear something warm")
        case .snow:
            print("School is cancelled")
        case .unknown:
            print("Our forecast generator is broken")
        }
        let place = "Metropolis"
        switch place {
        case "Gotham":
            print("You're the Batman!")
        case "Mega-city one":
            print("You're a judge Dredd!")
        case "Wakanda":
            print("You're Black Panther!")
        default:
            print("Who are you?")
        }
        
        let day = 5
        print("My true love gave me...")
        switch day {
        case 5:
            print("5 golden rings")
            fallthrough
        case 4:
            print("4 calling birds")
            fallthrough
        case 3:
            print("3 frenh hens")
            fallthrough
        case 2:
            print("2 turtle doves")
            fallthrough
        default:
            print("A partridger in a pear tree")
        }
        
        
        var anos = 18
        let canVote = anos >= 18 ? "Yes" : "No"
        
        let hour = 23
        print(hour < 12 ? "It's before noon" : "It's afternoon")
        
        var nomes = ["Jayne","Kaylee","Michelle"]
        let crewCount = nomes.isEmpty ? "No one" : "\(nomes.count) people"
        print(crewCount)
        
        enum Theme {
            case dark, light
        }
        let theme = Theme.dark
        let background = theme == .dark ? "Black" : "White"
        print(background)
        
    }
}
