//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Stephen Skubik-Peplaski on 8/29/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation

private let characters = Array( "abcdefghijklmnopqrstuvwxyz" +
                                "ABCDEFGHIJKLMNOPQRSTUVWXYZ" )
private let digits     = Array( "0123456789" )
private let specials   = Array( "~!@#$%^&*(){}[].,-" )


func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    let character = characters[index]
    return character
}

func generateRandomDigit() -> Character {
    let index = Int(arc4random_uniform(UInt32(digits.count)))
    let character = digits[index]
    return character
}

func generateRandomSpecial() -> Character {
    let index = Int(arc4random_uniform(UInt32(specials.count)))
    let character = specials[index]
    return character
}

func randomizeString(string: String) -> String {
    var stringArray = Array(string)
    var randomizedString = ""
    let randomIndex = Int(arc4random_uniform(UInt32(stringArray.count)))
    let length = stringArray.count
    
    for index in 0..<length {
        let randomIndex = Int(arc4random_uniform(UInt32(stringArray.count)))
        randomizedString.append(stringArray[randomIndex])
        stringArray.removeAtIndex(randomIndex)
    }
    
    return randomizedString
}

func generateRandomString(length: Int, digits: Int, specials: Int) -> String {
    var string = ""
    
    for index in 0..<digits {
        string.append(generateRandomDigit())
    }
    
    for index in 0..<specials {
        string.append(generateRandomSpecial())
    }
    
    for index in 0..<(length - digits - specials) {
        string.append(generateRandomCharacter())
    }
    
    return randomizeString(string)
}
