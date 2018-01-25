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

var randomNumber = Int(arc4random_uniform(100))
var guess: Int?
var tries = 2
var playingGame: Bool = true

while playingGame == true{

print("Please guess a number.")
    
    
guess = Int(readLine()!)!
    if guess == nil{
        print("please type a number")
    }



while guess != randomNumber && tries <= 5 {
    if randomNumber > guess!  {
        print("The number was higher! 🤦‍♂️")
    }
    else if randomNumber < guess! {
        print("The Random Number was lower! 🤦‍♂️")
    }
    print("Guess again")
    guess = Int(readLine()!)!
    tries += 1
    
}


if randomNumber == guess! {
    print("YOU WON !!!!!!!! 🎉")
    print("would you like to play again?")
    var answer = readLine()
    if answer == nil{
        print("please type yes or no")
    if answer == "no"{
        playingGame = false
    }
}
if tries > 5{
    print("Max number of tries reached. The correct number is \(randomNumber)")
    
}
if guess != randomNumber{
    print("would you like to play again?")
    var answer = readLine()
    if answer == nil{
        print("please type yes or no")
    }
    if answer == "no"{
        playingGame = false
    }
}
}
}
