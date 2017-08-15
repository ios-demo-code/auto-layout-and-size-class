//
//  ViewController.swift
//  AutoLayout-15-07-2017
//
//  Created by Soeng Saravit on 7/15/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions = ["What’s the name of this city in the United States with a bell in the near middle of the city?",
                     "What is the name of the spaceship first landed on the moon?",
                     "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
                     "What’s the first photo printed from a camera in the world?",
                     "When was the first email ever sent in the world?",
                     "… and what was that email about?"]

    @IBOutlet weak var questionLabel: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextQuestionClicked(_ sender: UIButton) {
        index += 1
        if index >= questions.count {
            index = 0
        }
        self.questionLabel.text = questions[index]
    }


}

