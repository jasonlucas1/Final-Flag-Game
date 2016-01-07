//
//  ResultViewController.swift
//  Final Project - Flag Game
//
//  Created by Jason Lucas on 12/9/15.
//  Copyright © 2015 Jason Lucas. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var result = Results()
    
    @IBOutlet weak var resultLabel1: UITextView!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
                resultLabel1.text! = "You Scored: \(result.points)/5"
            }
   
    @IBAction func resetButton(sender: AnyObject) {
        reset()
    
    }
    func reset() {
        var points = 0
        var name = ""
    }
}