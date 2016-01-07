//
//  FirstViewController.swift
//  Final Project - Flag Game
//
//  Created by Jason Lucas on 12/2/15.
//  Copyright © 2015 Jason Lucas. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var flagView: UIImageView!
    var result = Results()
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagView.image = UIImage(named: "Canadian flag")
    }
    
    //Buttons
    @IBAction func onButtonTapped1(sender: AnyObject) {
        correctAnswer()
        performSegueWithIdentifier("name1", sender: self)
        ++result.points
    }
    
    @IBAction func onButtonTapped2(sender: AnyObject) {
        incorrectAnswer()
        performSegueWithIdentifier("name1", sender: self)
        
    }
    @IBAction func onButtonTapped3(sender: AnyObject) {
        incorrectAnswer()
        performSegueWithIdentifier("name1", sender: self)
    }
    
    //Functions
    func correctAnswer() {
        presentAlert("Correct")
    }
    
    func incorrectAnswer(){
        presentAlert("Incorrect")
    }
    
    func presentAlert(m : String) {
        let alert = UIAlertController(title: "Results", message: m, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .Default, handler: { (actionSheetController) -> Void in
            self.performSegueWithIdentifier("name1", sender: self)
        }))
        presentViewController(alert, animated: true, completion: nil)
    }
    
    //Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! secondViewController
        dvc.result = self.result
        
        
        
    }
    
    
    
    
}

