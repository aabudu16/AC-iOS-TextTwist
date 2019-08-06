//
//  printStatement.swift
//  TextTwist
//
//  Created by Mr Wonderful on 8/6/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class printStatement{
   
    func alreadyGuessed(correctOrNotCorrect:UILabel,input:String){
        correctOrNotCorrect.text = "\(input) has been Guessed already."
    }
    
    func correctInput(correctOrNotCorrect:UILabel){
        correctOrNotCorrect.text = "Correct"
    }
    
    func incorrectInput(correctOrNotCorrect:UILabel){
        correctOrNotCorrect.text = "Incorrect"
    }
    
    func GuessedAllWords(amountOfWords:Int, wordLabel:UILabel){
        if amountOfWords == 0{
            wordLabel.text = "Hurray, You Guess All The Words"
        }
    }
}

