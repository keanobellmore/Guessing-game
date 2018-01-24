//
//  main.swift
//  Guessing Game
//
//  Created by Keano Bellmore on 1/23/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation
// 1.generate a random number
// 2.ask user input
// 3.take user unput
// 4.determine wrong or right(loop until correct)
// 5.if correct ask if they want to play again
// 6.if incorrect tell them and then ask to play again

var randomNumber = arc4random_uniform(100)
print("guess a random number")
var input = readLine()
var numInput = uint32(input!)!
if randomNumber == numInput{
 print("you're correct")


} else  


