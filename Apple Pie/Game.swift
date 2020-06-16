//
//  Game.swift
//  Apple Pie
//
//  Created by Dmitriy Stekvashov on 15.06.2020.
//  Copyright © 2020 Dmitriy Stekvashov. All rights reserved.
//

import Foundation

struct Game {
    var word: String //guess of word
    var incorrectMovesRemaining: Int //quntity of try
    
    //list of pressed button
    var guessedLetters: [Character]
    
    //display word
    var formattedWord: String{
        var guessedWord = ""
        
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            }else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    //treatmant of pressed char
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        
        //check this char in word
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}
