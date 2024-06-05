//
//  day8.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 04/06/24.
//

import Foundation


class day8: day {
    static func main() {
        func printTimesTables(for number: Int, end: Int = 12){
            for i in 1...end {
                print("\(i) x \(number) is \(i * number)")
            }
        }
        printTimesTables(for: 5, end: 20)
        printTimesTables(for: 8)
        
        var characters = ["Lana", "Ray", "Pam", "Sterling"]
        print(characters.count)
        characters.removeAll()
        print(characters.count)
        
        enum PasswordError: Error {
            case short, obvious
        }
        
        func checkPassword(_ password: String) throws -> String {
            if password.count < 5 { throw PasswordError.short}
            if password == "12345" { throw PasswordError.obvious}
            
            if password.count < 8 {
                return "OK"
            } else if password.count < 10{
                return "Good"
            } else {
                return "Excellent"
            }
        }
        
        let string = "123456"
        do {
            let result = try checkPassword(string)
            print("Password rating \(result)")
        } catch PasswordError.short{
            print("Please use a longer password.")
            
        } catch PasswordError.obvious {
            print("Please use a shorter password")
        }
        catch {
            print("There was an error: \(error.localizedDescription)")
        }
        enum ChargeError: Error {
            case noCable
            case noPower
        }
        func chargePhone(atHome: Bool) throws {
            if atHome {
                print("Phone is charging...")
            } else {
                throw ChargeError.noPower
            }
        }
    }
}
