//
//  StartOver.swift
//  TextTwist
//
//  Created by Mr Wonderful on 8/5/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class StartOver:WordData {
 
    
    var randomElement:TestTwistInfo = (wordCount: 0, letters: "", words: [""])
    
    
    func startOver(){
        
        randomElememt = wordData.randomIndexGenerator()
        amountOfWords = randomElememt.wordCount
        wordLabel.text =  "\(randomElememt.letters.uppercased()): You can make \(amountOfWords) random words "
        correctOrNotCorrect.text = "Make words from the given Characters"
    }
}

