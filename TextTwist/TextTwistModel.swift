//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class TextTwistModel:WordData {

    func insertRandomElement() -> TestTwistInfo{
       let randomElement = WordData.allInfo.randomElement()!
        return randomElement
    }
    func insertAmountOfWords() -> Int{
       let amountOfWords = insertRandomElement().wordCount
        return amountOfWords
    }
    
}
