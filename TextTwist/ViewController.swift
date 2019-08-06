//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    
    let wordData = WordData()
    let textTwistModel = TextTwistModel()
    var randomElememt:TestTwistInfo = TestTwistInfo(wordCount: 0, letters: "", words: [""])
    @IBOutlet var threeLetterWord: UITextView!
    @IBOutlet var fourLetterWord: UITextView!
    @IBOutlet var fiveLetterWord: UITextView!
    @IBOutlet var correctOrNotCorrect: UILabel!
    @IBOutlet var wordTextField: UITextField!
    
    @IBOutlet var sixLetterWord: UITextView!
    @IBOutlet var wordLabel: UILabel!
    var amountOfWords = Int()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        wordTextField.delegate = self
        startOver()
        //        amountOfWords = randomElememt.wordCount
        
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        return true
    }
    // this function is used when you resign the first responder.
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        <#code#>
//    }
    
    private func startOver(){
        
        randomElememt = textTwistModel.insertRandomElement()
        amountOfWords = randomElememt.wordCount
        wordLabel.text =  "\(randomElememt.letters.uppercased()): You can make \(randomElememt.wordCount) random words "
        correctOrNotCorrect.text = "Make words from the given Characters"
    }
    private func incrementer(){
        amountOfWords -= 1
        wordLabel.text =  "\(randomElememt.letters.uppercased()): You have \(amountOfWords) words left"
    }
    
    private  func alreadyGuessed(input:String){
        correctOrNotCorrect.text = "\(input) has been Guessed already."
    }
    private func correctInput(){
        correctOrNotCorrect.text = "Correct"
    }
    private func incorrectInput(){
        correctOrNotCorrect.text = "Incorrect. please try again"
    }
    private func clearTextViews(){
        threeLetterWord.text = ""
        fourLetterWord.text = ""
        fiveLetterWord.text = ""
        sixLetterWord.text = ""
    }
    
    @IBAction func word(_ sender: UITextField) {
        
        if amountOfWords == 0{
            wordLabel.text = "Hurray, You Guess All The Words"
        }
        
        
        if sender.text?.count == 3{
            if randomElememt.words.contains(sender.text?.lowercased() ?? "") && !threeLetterWord.text.contains(String(sender.text!.lowercased())){
                correctInput()
                incrementer()
                threeLetterWord.text.append("\(sender.text!.lowercased())\n")
                
            }else{
                if threeLetterWord.text.contains(String(sender.text!.lowercased())){
                    alreadyGuessed(input: sender.text!.uppercased())
                }else{
                    incorrectInput()
                }
            }
        }
        
        if sender.text?.count == 4{
            if randomElememt.words.contains(sender.text?.lowercased() ?? "") && !fourLetterWord.text.contains(String(sender.text!.lowercased())){
                correctInput()
                incrementer()
                fourLetterWord.text.append("\(sender.text!.lowercased())\n")
            }else{
                if fourLetterWord.text.contains(String(sender.text!.lowercased())){
                    alreadyGuessed(input: sender.text!.uppercased())
                }else{
                    incorrectInput()
                }
            }
        }
        if sender.text?.count == 5{
            if randomElememt.words.contains(sender.text?.lowercased() ?? "") && !fiveLetterWord.text.contains(String(sender.text!.lowercased())){
                correctInput()
                incrementer()
                fiveLetterWord.text.append("\(sender.text!.lowercased())\n")
            }else{
                if fiveLetterWord.text.contains(String(sender.text!.lowercased())){
                    alreadyGuessed(input: sender.text!.uppercased())
                }else{
                    incorrectInput()
                }
            }
        }
        if sender.text?.count == 6{
            if randomElememt.words.contains(sender.text?.lowercased() ?? "") && !sixLetterWord.text.contains(String(sender.text!.lowercased())){
                correctInput()
                incrementer()
                sixLetterWord.text.append("\(sender.text!.lowercased())\n")
            }else{
                if sixLetterWord.text.contains(String(sender.text!.lowercased())){
                    alreadyGuessed(input: sender.text!.uppercased())
                }else{
                    incorrectInput()
                }
            }
        }
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        clearTextViews()
        startOver()
    }
}


