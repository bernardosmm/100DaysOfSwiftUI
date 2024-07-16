//
//  Checkpoint7.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 16/07/24.
//

import Foundation
class Checkpoint7: day {
    static func main() {
        class Animal {
            var legs: Int

            init(legs: Int) {
                self.legs = legs
            }
        }

        class Dog: Animal {
            func speak() {
                print("Woof! Woof!")
            }
        }

        class Cat: Animal {
            var isTame: Bool

            init(legs: Int, isTame: Bool) {
                self.isTame = isTame
                super.init(legs: legs)
            }

            func speak() {
                print("Miau, miau, miau, miau")
            }
        }

        class Corgi: Dog {
            override func speak() {
                print("Corgi: Woof! Woof!")
            }
        }

        class Poodle: Dog {
            override func speak() {
                print("Poodle: Yap! Yap!")
            }
        }

        class Persian: Cat {
            override func speak() {
                print("Persian: Purr... Meow!")
            }
            
            init(isTame: Bool) {
                super.init(legs: 4, isTame: isTame)
            }
        }

        class Lion: Cat {
            override func speak() {
                print("Lion: Roar!")
            }
            
            init() {
                super.init(legs: 4, isTame: false)
            }
        }
        
        let corgi = Corgi(legs: 4)
        corgi.speak()

        let poodle = Poodle(legs: 4)
        poodle.speak()

        let persian = Persian(isTame: true)
        persian.speak()

        let lion = Lion()
        lion.speak()
    }
}
