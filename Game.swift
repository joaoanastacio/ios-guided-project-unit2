//
//  Game.swift
//  ApplePie
//
//  Created by Joao Victor Silva Anastacio on 2022-04-29.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += " "
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
          if !word.contains(letter) {
            incorrectMovesRemaining -= 1
          }
    }
}
