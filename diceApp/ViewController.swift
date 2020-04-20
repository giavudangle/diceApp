//
//  ViewController.swift
//  diceApp
//
//  Created by Vu Dang on 4/20/20.
//  Copyright © 2020 Vu Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to access UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceFive")

    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // let is constant
        // var can be change value
        let diceArray = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        diceImageViewOne.image=diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image=diceArray[Int.random(in: 0...5)]
       
    }


}

