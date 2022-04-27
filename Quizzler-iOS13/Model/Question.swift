//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Chyavan Shenoy on 27/04/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let questions: String
    let answers: String

    init(questions: String, answers: String){
        self.questions = questions
        self.answers = answers
    }
}
