//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Chyavan Shenoy on 27/04/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(questions: "A slug's blood is green.", answers: "True"),
        Question(questions: "Approximately one quarter of human bones are in the feet.", answers: "True"),
        Question(questions: "The total surface area of two human lungs is approximately 70 square metres.", answers: "True"),
        Question(questions: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answers: "True"),
        Question(questions: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answers: "False"),
        Question(questions: "It is illegal to pee in the Ocean in Portugal.", answers: "True"),
        Question(questions: "You can lead a cow down stairs but not up stairs.", answers: "False"),
        Question(questions: "Google was originally called 'Backrub'.", answers: "True"),
        Question(questions: "Buzz Aldrin's mother's maiden name was 'Moon'.", answers: "True"),
        Question(questions: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answers: "False"),
        Question(questions: "No piece of square dry paper can be folded in half more than 7 times.", answers: "False"),
        Question(questions: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answers: "True")
    ]
    var questionNumber = 0;
    var score: Int = 0
    
    mutating func CheckAnswer(_ userAnswer: String) -> Bool {
        if(userAnswer == quiz[questionNumber].answers){
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func GetScore() -> Int {
        return score
    }
    
    func GetQuestion() -> String {
        return quiz[questionNumber].questions;
    }
    
    func GetProgress() -> Float {
        let percent = (Float(questionNumber + 1)/Float(quiz.count))
        return percent
    }
    
    mutating func GetNext(){
        let quizLength = quiz.count
        
        if(questionNumber < quizLength - 1){
            questionNumber += 1;
        }
        else {
            questionNumber = 0;
        }
    }
    
}
