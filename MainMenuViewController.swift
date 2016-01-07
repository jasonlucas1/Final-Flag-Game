//
//  MainMenuViewController.swift
//  Final Project - Flag Game
//
//  Created by Jason Lucas on 12/2/15.
//  Copyright © 2015 Jason Lucas. All rights reserved.
//

import UIKit
class MainMenuViewController: UIViewController {
    
    var result = Results()
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! FirstViewController
        dvc.result = self.result
    }
}