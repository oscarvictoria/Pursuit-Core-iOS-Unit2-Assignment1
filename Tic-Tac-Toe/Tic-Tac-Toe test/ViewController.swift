//
//  ViewController.swift
//  Tic-Tac-Toe test
//
//  Created by Oscar Victoria Gonzalez  on 11/6/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 // cross
    var gameState = [0,0,0,0,0,0,0,0,0]
    
   
    @IBOutlet var gameButton: [UIButton]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func action(_ sender: AnyObject) {
           if gameState[sender.tag-1] == 0 {
               gameState[sender.tag-1] = activePlayer
               if activePlayer == 1 {
                   sender.setBackgroundImage(UIImage(named: "Xmark" ), for: .normal )
                   activePlayer = 2
               } else {
                   sender.setBackgroundImage(UIImage(named: "Circle" ), for: .normal )
                   activePlayer = 1
               }
           }
           
           
           
           
       }
    
    
    
    @IBAction func reset(_: AnyObject) {
    }
    
}

