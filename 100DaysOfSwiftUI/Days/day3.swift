//
//  day3.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 23/05/24.
//

import Foundation

class day3: day {
    static func main() {
        // ARRAYS
        var beatles : [String] = ["John", "Paul", "George", "Ringo"]
        beatles.append("Bernardo")
        let numbers : [Int] = [4, 8, 15, 16, 32]
        var temperatures : [Double] = [23.2, 28.4, 32,5]
        print(beatles[0])
        print(numbers[1])
        print(temperatures[2])
        
        var score = Array <Int>()
        score.append(100)
        score.append(200)
        score.append(300)
        print(score)
        
        var albums = Array<String>()
        albums.append("Whatever peolple say i am that's what i am not")
        albums.append("The new abnormal")
        albums.append("AM")
        print(albums)
        print(albums.count)
        
        var bands : [String] = ["The Strokes", "Arctic Monkeys", "The Smiths"]
        bands.remove(at:2)
        print(bands)
        print(bands.count)
        bands.removeAll()
        print(bands.count)
        
        let DanBooks : [String] = ["O Código Da Vinci", "Anjos e demônios", "Inferno"]
        print(DanBooks.contains("É assim que acaba"))
        
        let cities : [String] = ["Fortaleza", "São Paulo", "Rio de Janeiro"]
        print(cities.sorted())
        
        let musics : [String] = ["Do I wanna know?", "I wanna be yours", "The night we met", "Where is my love?"]
        let reversedMusics = musics.reversed()
        print(reversedMusics)
        
        // DICTIONARIES
        
        let employee = [
            "name": "Alex Turner",
            "job": "singer",
            "location": "Sheffield"
        ]
        
        print(employee["job", default: "Unknown"])
        print(employee["name", default: "Unknown"])
        print(employee["location", default: "Unknown"])
        
        let hasGraduated = [
            "Bernardo": true,
            "João": false,
            "Paulo": true
        ]
        
        let olympics = [
            2012: "London",
            2016: "Rio de Janeiro",
            2021: "Tokyo"
        ]
        print(olympics[2021, default: "Unknown"])
        
        var ages = [String: Int]()
        ages["Bernardo"] = 19
        ages["Rebeca"] = 19
        ages["Paulo"] = 23
        ages["Leo"] = 21
        
        var inimigos = [String: String]()
        inimigos["Batman"] = "Coringa"
        inimigos["Homem Aranha"] = "Duende verde"
        inimigos["Flash"] = "Flash reverso"
        
        // SETS
        var atores = Set<String>()
        atores.insert("Tom Cruse")
        atores.insert("Vin Diesel")
        atores.insert("Tom Hanks")
        atores.insert("Nicolas Cage")
        print(atores)
        
        // ENUMS
        
        enum semana {
            case monday, tuesday, wednesday, thursday, friday
        }
        var day = semana.monday
        day = semana.tuesday
        day = semana.wednesday
        day = semana.thursday
        day = semana.friday
    }
}
