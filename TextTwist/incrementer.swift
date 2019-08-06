//
//  incrementer.swift
//  TextTwist
//
//  Created by Mr Wonderful on 8/6/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

struct Incrementer{
    var amount = Int()
   mutating func incrementer(amountOfWords:Int, label:UILabel, randomElement:TestTwistInfo){
         self.amount = amountOfWords
        self.amount -= 1
        label.text =  "\(randomElement.letters.uppercased()): You have \(self.amount) words left"
    }
}
