//
//  Checkpoint4.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 04/06/24.
//

import Foundation
class Checkpoint4: day {
    static func main() {
        enum NumberError: Error {
            case outOfBound, noRoot
        }

        func getSquare(_ number:Int) throws -> Int {
            if (number < 1 || number > 10000) {
                throw NumberError.outOfBound
            }
            
            for i in 1...100 {
                if i*i == number {
                    return i
                }
            }
            
            throw NumberError.noRoot
        }


        do {
            let result = try getSquare(13)
            print("Result: \(result)")
        } catch NumberError.outOfBound {
            print("out of bounds")
        } catch NumberError.noRoot {
            print("no Root")
        } catch {
            print("There was an error: \(error.localizedDescription)")
        }
    }
}
