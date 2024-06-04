//
//  day7.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 03/06/24.
//

import Foundation
class day7: day {
    static func main() {
        func showWelcome() {
            print("Welcome to my app")
            print("By default this prints outs a conversion")
            print("chart from centimeters to inches, but you")
            print("can also set a custom range if you want")
        }
        showWelcome()
        func printTimesTables(number: Int, end: Int) {
            for i in 1...end {
                print("\(i) * \(number) is \(i*number)")
            }
        }
        printTimesTables(number: 5, end: 20)
        let root = sqrt(169)
        print(root)
        print(type(of: root))
        
        func rollDice() -> Int {
            return Int.random(in: 1...6)
        }
        let result = rollDice()
        print(result)
        
        func areLettersIdentical(string1: String, string2: String) -> Bool {
            return string1.sorted() == string2.sorted()
        }
        let result2: Bool = areLettersIdentical(string1: "abcdefg", string2: "abcdefg")
        print(result2)
        
        func pythagoras(a: Double, b: Double) -> Double {
            sqrt( a * a + b * b )
        }
        
        let c = pythagoras(a: 3, b: 4)
        print(c)
        
        func sayHello() {
            return
        }
        func getUser() -> (firstName: String, lastName: String) {
            (firstName: "Taylor", lastName: "Swift")
        }
        
        let user = getUser()
        print("Name: \(user.firstName) \(user.lastName)")
        
        let lyric = "I see a red door and I want to paint it black."
        print(lyric.hasPrefix("I see"))
        
        func isUppercase(_ string: String) -> Bool {
            string == string.uppercased()
        }
        
        let string = "HELLO WORLD"
        let resultado = isUppercase(string)
        
        func multiplcaDoisNumeros(primmeiroNumeroASerMultiplicado: Int, SegundoNumeroASerMultiplicado: Int) -> Int {
            return primmeiroNumeroASerMultiplicado * SegundoNumeroASerMultiplicado
        }
        print(multiplcaDoisNumeros(primmeiroNumeroASerMultiplicado: 25, SegundoNumeroASerMultiplicado: 25))
        
        func imprimirMeuNome(nomeASerImprmido: String) {
            print("O meu nome é \(nomeASerImprmido)")
        }
        imprimirMeuNome(nomeASerImprmido: "Bernas")
        
        func imprimirMinhaIdade(idadeASerImpressa: Int) {
            print("Minha idade é \(idadeASerImpressa) anos")
        }
        imprimirMinhaIdade(idadeASerImpressa: 19)
        
        func albunsFavoritos(nomesDosAlbuns: [String]) {
            print("Meus albuns favoritos são \(nomesDosAlbuns)")
        }
        albunsFavoritos(nomesDosAlbuns: ["The new abnormal", "Whatever people say i am, that's what i am not", "AM"])
        
    }
    
}
