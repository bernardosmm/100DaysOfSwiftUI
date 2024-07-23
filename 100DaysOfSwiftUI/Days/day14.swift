//
//  day14.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 23/07/24.
//

import Foundation
class day14: day {
    static func main() {
        var username: String? = nil
        
        if let unwrappedName = username {
            print("We got a user: \(unwrappedName)")
        } else {
            print("The optional is empty.")
        }
        
        func square(number: Int) -> Int {
            number * number
        }
        
        var number: Int? = nil
        
        if let number = number {
            print(square(number: number))
        }
        
        var favoriteMovie: String? = nil
        favoriteMovie = "The Conjuring 2"
        if let movie = favoriteMovie {
            print("My favorite movie is \(movie).")
        } else {
            print("You don't have a favorite movie.")
        }
        
        var weatherForecast: String?
        weatherForecast = "Sunny"
        if let forecast = weatherForecast {
            print("The forecast is \(forecast)")
        } else {
            print("No forecat available")
        }
        
        func square(of number: Int?) {
            guard let number = number else {
                print("Missing input")
                return
            }
            print("\(number) x \(number) is \(number * number)")
        }
        
        struct Book {
            let title: String
            let author: String?
        }
        
        let book = Book(title: "The Hobbit", author: "J")
        let author = book.author ?? "Anonymous"
        print("Author")
        
        var captain: String? = "Kathryn Janeway"
        let name = captain ?? "Anonymous"
        
        struct Movie {
            let title: String
            let director: String?
        }
        
        var movie: Movie? = nil
        let director = movie?.director?.first?.uppercased() ?? "A"
        print(director)
        
        let songs: [String]? = [String]()
        let finalSong = songs?.last?.uppercased()
        
        enum UserError: Error {
            case badID, networkFailed
        }

        func getUser(id: Int) throws -> String {
            throw UserError.networkFailed
        }

        if let user = try? getUser(id: 23) {
            print("User: \(user)")
        }
        
        let user = (try? getUser(id: 23)) ?? "Anonymous"
        print(user)
    }
}
