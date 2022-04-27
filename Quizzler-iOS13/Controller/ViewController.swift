//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuestionView: UILabel!
    @IBOutlet weak var ProgressView: UIProgressView!
    @IBOutlet weak var TrueButton: UIButton!
    @IBOutlet weak var FalseButton: UIButton!
    @IBOutlet weak var ScoreText: UILabel!
    
    var quizBrain = QuizBrain();
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let answerStatus = quizBrain.CheckAnswer(userAnswer)
        if(answerStatus)
        {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.GetNext()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    
    @objc func UpdateUI () {
        QuestionView.text = quizBrain.GetQuestion()
        TrueButton.backgroundColor = UIColor.clear
        FalseButton.backgroundColor = UIColor.clear
        ProgressView.progress = quizBrain.GetProgress()
        ScoreText.text = "Score: \(quizBrain.GetScore())"
    }
    
}

