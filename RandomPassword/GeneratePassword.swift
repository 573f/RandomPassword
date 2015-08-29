//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Stephen Skubik-Peplaski on 8/29/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation

private let characters = Array( "0123456789" +
                                "abcdefghijklmnopqrstuvwxyz" +
                                "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    let character = characters[index]
    return character
}

func generateRandomString(length: Int) -> String {
    var string = ""
    
    for index in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}
