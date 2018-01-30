//
//  main.swift
//  Guessing Game
//
//  Created by Keano Bellmore on 1/23/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//
import Foundation





var playingGame = true

func checkNumber(userGuess: Int) -> Int {
    var guess = Int(readLine()!)
    while guess == nil {
        print("Guess again")
        guess = Int(readLine()!)!
    }
    return guess!
}


while playingGame {

var randomNumber = Int(arc4random_uniform(100))
var guess: Int?
var tries = 1

    print("Guess a random number")
    
    
    
    
    
    
guess = Int(readLine()!)
    guess = checkNumber(userGuess: guess!)
    
    
while guess != randomNumber && tries < 5 {
    
    if randomNumber > guess! {
            print("Higher")
        } else if randomNumber < guess! {
            print("Lower")
        }
        print("guess again")
        guess = Int(readLine()!)!
        guess = checkNumber(userGuess: guess!)
        tries += 1
    }
if randomNumber == guess! {
    print("you won!")
    print("do you want to play again?")
}

if tries == 5 {
print("max number of tries reached. the number was \(randomNumber). do you want to play again?")
var answer = readLine()
    while answer?.lowercased() != "yes" && answer?.lowercased() != "no"{
        print("please only say yes or no")
    answer = readLine()
    }
    if answer?.lowercased() == "no" {
        playingGame = false
    }
}
}
