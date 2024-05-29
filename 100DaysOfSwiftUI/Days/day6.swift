//
//  day6.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 28/05/24.
//

import Foundation

class day6: day {
    static func main() {
        let plataforms: [String] = ["iOS    ", "macOS", "tvOS", "watchOS"]
        for os in plataforms {
            print("Swift runs better in \(os)")
        }
        for i in 1...10 {
            print("The \(i) times table")
            
            for j in 1...10 {
                print("\(i) * \(j) = \(j * i)")
            }
            print()
        }
        
        for i in 1...5 {
            print("Counting from 1 through 5: \(i)")
        }
        
        for i in 1..<5 {
            print("Counting from 1 up to 5: \(i)")
        }
        
        var lyric : String = "Haters gonna "
        for _ in 1...5 {
            lyric += "hate"
        }
        print(lyric)
        
        let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

        for name in names {
            print("\(name) is a secret agent")
        }
        
        var numbers = [1, 2, 3, 4, 5, 6]
        for number in numbers {
            if number.isMultiple(of: 2) {
                print(number)
            }
            var countDown = 10
            while countDown > 0 {
                print("\(countDown)...")
                countDown -= 1
            }
            print("Blast off!")
        }
        
        let id = Int.random(in: 1...100)
        let amount = Double.random(in: 0...1)
        
        var roll = 0
        while roll != 20 {
            roll = Int.random(in: 0...20)
            print("I rolled a \(roll)")
        }
        print("Critical hit!")
        
        var cats: Int = 0
        while cats < 10 {
            cats += 1
            print("I'm getting another cat.")
            if cats == 4 {
                print("Enough cats!")
                cats = 10
            }
        }
        var number: Int = 10
        while number > 0 {
            number -= 2
            if number.isMultiple(of: 2) {
                print("\(number) is an even number.")
            }
        }
        var number1 = 4
        var number2 = 14
        var multiples = [Int] ()
        for i in 1...100_000 {
            if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
                multiples.append(i)
                if multiples.count == 10 {
                    break
                }
            }
        }
        print(multiples)
        
        let scores = [1, 8, 4, 3, 0, 5, 2]
        var count = 0

        for score in scores {
            if score == 0 {
                break
            }

            count += 1
        }

        print("You had \(count) scores before you got 0.")
    }
}


