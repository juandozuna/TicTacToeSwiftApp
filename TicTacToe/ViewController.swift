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
            ActivePlayer = 2
        }else {
            btn.setTitle("O", for: UIControl.State.normal)
            btn.backgroundColor = UIColor(red: 100/255, green: 150/255, blue: 250/255, alpha: 0.6)
            Player2.append(btn.tag)
            ActivePlayer = 1
        }
        btn.isEnabled = false
    }
    
}

