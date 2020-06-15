//
//  ViewController.swift
//  Apple Pie
//
//  Created by Dmitriy Stekvashov on 14.06.2020.
//  Copyright © 2020 Dmitriy Stekvashov. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //list words for guess
    var listOfWords = [
        "арбуз",
        "аанаг",
        "вертолет",
        "гномик",
        "домик"
    ]
    
    //incoreect try count
    let incorrectMovesAllowed = 7
    
    //count wins and lose
    let totalWins = 0
    let totalLosses = 0
    
    //instanse current game
    var currentGame: Game!
    
    
    
    
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    
    @IBOutlet weak var coreectWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //stat new game
        newRound()
    }
    
    //stat new game
    func newRound(){
        let newWord = listOfWords.removeFirst()
        
        currentGame = Game(word: newWord,
                           incorrectMovesRemaining: incorrectMovesAllowed)
    }
    
    //update interface
    func updateUI(){
        //update picture
        let imageName = "Tree \(currentGame.incorrectMovesRemaining)"
        let image = UIImage(named: imageName)
        treeImageView.image = image
        
        //update scores
        scoreLabel.text = "Выигрышей: \(totalWins), Проигрышей: \(totalLosses)"
    }
     
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    

}

