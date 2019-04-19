//
//  ViewController.swift
//  TicTacToe
//
//  Created by Juan Daniel Ozuna Espinal on 4/18/19.
//  Copyright © 2019 Juan Daniel Ozuna Espinal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSelectEvent(_ sender: UIButton) {
        self.playGame(btn: sender)
        
    }
    
    var ActivePlayer: Int = 1
    var Player1 = [Int]()
    var Player2 = [Int]()
    private func playGame(btn: UIButton){
        if (ActivePlayer == 1) {
            btn.setTitle("X", for: UIControl.State.normal)
            btn.backgroundColor = UIColor(red: 105/255, green: 250/255, blue: 100/255, alpha: 0.6)
            Player1.append(btn.tag)
            findWinner()
            ActivePlayer = 2
        }else {
            btn.setTitle("O", for: UIControl.State.normal)
            btn.backgroundColor = UIColor(red: 100/255, green: 150/255, blue: 250/255, alpha: 0.6)
            Player2.append(btn.tag)
            findWinner()
            ActivePlayer = 1
        }
        btn.isEnabled = false
    }
    
    private func findWinner(){
        var winner = -1
        let checkWins = [
            [1,2,3], [4,5,6], [7,8,9],
            [1,4,7], [2,5,8], [3,6,9],
            [1,5,9], [3,5,7]
        ]
        var count = 0
        print("Finding winner of active player \(ActivePlayer)")
        for trial in checkWins {
            count = 0
            for num in trial {
                if ActivePlayer == 1 {
                    if Player1.contains(num) {
                        count += 1
                    }
                } else {
                    if Player2.contains(num){
                        count += 1
                    }
                }
            }
            if count == 3 {
                break
            }
        }
        if count == 3 {
            if ActivePlayer == 1 {
                winner = 1
            }else {
                winner = 2
            }
        }
        if winner > -1 {
            let alert = UIAlertController(title: "Winner", message: "Player \(winner) is the winner", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
}

