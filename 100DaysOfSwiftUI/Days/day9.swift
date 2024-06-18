//
//  day9.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 06/06/24.
//

import Foundation
class day9: day {
    static func main() {
        func greetUser(){
            print("Hi there!")
        }
        greetUser()
        var greetCopy = greetUser
        greetCopy()
        
        
        let sayHello = {
            print("Hello world")
        }
        sayHello()
        
        let callMyName = { (name: String) -> String in
        "Hi \(name)"}
        
        let team = ["Bernardo", "Paulo", "Bruno", "Thiago"]
        let teamSorted = team.sorted()
        print(teamSorted)
        
        func captainsSorted(name1: String, name2: String) -> Bool {
            if name1 == "Bernardo" {
                return true
            } else if name2 == "Bernardo" {
                return false
            }
            return name1 < name2
        }
        //let captainFirstTeam = team.sorted(by: captainsSorted)
        //print(captainFirstTeam)
        
        let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
            if name1 == "Bernardo" {
                return true
            } else if name2 == "Bernardo" {
                return false
            }
            return name1 < name2
        })
        
        func pay(user: String, amount: Int) {
            //code
        }
        
        let payment = { (user: String, amount: Int) in
        //code
        }
        
        var cleanRoom = { (name: String) in
        print("I'm cleaning the \(name)")
        }
        cleanRoom("Kitchen")
        
        var sendMessage = {(message: String) in
            if message != ""{
            print("Sending message to \(message)")
            } else {
                print("Your message was empty")
            }
        }
        var click = {(button: Int) in
            if button >= 0 {
            print("Button \(button) was clicked.")
            } else {
                print("That button doen't exist.")
            }
        }
        var shareWinnings = { (amount: Double) in
            let half = amount / 2.0
            print("It's \(half) to you and \(half) to me")
        }
        shareWinnings(50)
        
        var flyDrone = { (hasPermit: Bool) -> Bool in
            if hasPermit {
                print("Let's find somewhere safe!")
                return true
            }
            print("That's against the law")
            return false
        }
        
        let measureSize = { (inches: Int) -> String in
            switch inches {
            case 0...26:
                return "XS"
            case 27...30:
                return "S"
            case 31...34:
                return "M"
            case 35...38:
                return "L"
            default:
                return "XL"
            }
        }
        measureSize(36)
        
        let goSurfing = {(waveHeight: Int) -> String in
            if waveHeight < 5 {
                return "Let's go"
            } else if waveHeight < 10 {
                return "this could be tricky"
            } else if waveHeight < 20 {
                return "Only a pro could do that"
            } else {
                return "No way"
            }
        }
        
        let people = ["Bernas", "Ph", "Breca"]
        
        let sorted = people.sorted{
            if $0 == "Bernas" {
                return true
            } else if $1 == "Bernas" {
                return false
            }
            return $0 < $1
        }
        let bOnly = people.filter { $0.hasPrefix("B")}
        print(bOnly)
        
        let uppercasePeople = people.map { $0.uppercased()}
        print(uppercasePeople)
        
        // Function as a type
        
//        let viagemParaLagoinha = { (lugar: String) in
//            print("Estou viajando para Lagoinha")
//        }
//        
//        func viagemParaSalvador(){
//            print("Estou viajando para Salvador")
//        }
//        
        func viajar(closure: (String, Int) -> Void) {
            print("Estou viajando...")
            closure("Lagoinha", 10)
       }
        
        viajar{
            print("Para \($0) - \($1)")
        }
        
        func teste(numero: Double, nome: String, closure: () -> Void) {
            
        }
        teste(numero: 12.9, nome: "Bernas") {
            
        }
        
        func dismiss(animated: Bool, completion: (() -> Void)? = nil) {
            completion?()
        }
        
        dismiss(animated: true) {
            
        }
    }
}










