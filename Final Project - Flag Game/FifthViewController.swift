//
//  FifthViewController.swift
//  Final Project - Flag Game
//
//  Created by Jason Lucas on 12/9/15.
//  Copyright © 2015 Jason Lucas. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var flagView: UIImageView!
        var result = Results()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagView.image = UIImage(named: "china")        
    }
    
    //Buttons
    @IBAction func onButtonTapped1(sender: AnyObject) {
        incorrectAnswer()
        performSegueWithIdentifier("name5", sender: self)
    }
    @IBAction func onButtonTapped2(sender: AnyObject) {
        incorrectAnswer()
        performSegueWithIdentifier("name5", sender: self)
    }
    @IBAction func onButtonTapped3(sender: AnyObject) {
        correctAnswer()
        performSegueWithIdentifier("name5", sender: self)
        ++result.points
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
            self.performSegueWithIdentifier("name5", sender: self)
        }))
        presentViewController(alert, animated: true, completion: nil)
    }
    
    //Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ResultViewController
        dvc.result = self.result
    }
    


}
