//
//  ViewController.swift
//  War
//
//  Created by Rodrigo Wirth on 20/05/17.
//  Copyright © 2017 Rodrigo Wirth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    let cardNames = [
        "card2",
        "card3",
        "card4",
        "card5",
        "card6",
        "card7",
        "card8",
        "card9",
        "card10",
        "jack",
        "queen",
        "king",
        "ace"
    ]
    
    var leftScore = 0;
    var rightScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber:Int = Int(arc4random_uniform(13))
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        if leftNumber > rightNumber {
            leftScore += 1;
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber < rightNumber {
            rightScore += 1;
            rightScoreLabel.text = String(rightScore)
        }
    }
}

