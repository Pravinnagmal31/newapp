//
//  ViewController.swift
//  newapp
//
//  Created by Mohan Kondle on 02/06/18.
//  Copyright © 2018 vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Index1 : Int = 0
    var Index2 : Int = 0
    let Str = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Index1 = Int(arc4random_uniform(6))
        Index2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named : Str[Index1])
        diceImageView2.image = UIImage(named : Str[Index2])
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector (ViewController.handleSwipe(_:)))
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector (ViewController.handleSwipe(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RollPressed(_ sender: Any) {
       RollButton()
    }
    
    
    @IBOutlet weak var disp1: UITextField!
    @IBOutlet weak var disp2: UITextField!
    
    
    
    func RollButton() {
    Index1 = Int(arc4random_uniform(6))
    Index2 = Int(arc4random_uniform(6))
    
    diceImageView1.image = UIImage(named : Str[Index1])
    diceImageView2.image = UIImage(named : Str[Index2])
    disp1.text = String(Index1 + 1)
    disp2.text = String(Index2 + 1)
    
    
    
    }
    
 @objc func handleSwipe(_ sender:UISwipeGestureRecognizer) {
        if (sender.direction == .left) {
            RollButton()
        }
        
        if (sender.direction == .right) {
            RollButton()
        }
    }

}

