//
//  ViewController.swift
//  Multiples Exercise
//
//  Created by Christopher Reynolds on 2/11/16.
//  Copyright © 2016 Smooth Black 6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var maxTotal: Int = 100;
    var multiple: Int = 0;
    var total: Int = 0;

    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var whatMultipleTxt: UITextField!
    @IBOutlet weak var letsMathBtn: UIButton!
    
    @IBOutlet weak var mathLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onLetsMathPressed(sender: UIButton) {
        if whatMultipleTxt.text != nil && whatMultipleTxt.text != "" {
            showHideStartScreen()
            showHideMathScreen()
            multiple = Int( whatMultipleTxt.text! )!
            mathLbl.text = "Pres ADD to Add!"
        }
    }
    
    @IBAction func onAddPressed(sender: UIButton) {
        mathLbl.text = "\(total) + \(multiple) = \(total + multiple)"
        total += multiple
        if total >= maxTotal {
            showHideMathScreen()
            showHideStartScreen()
            total = 0
            whatMultipleTxt.text = ""
        }
    }
    
    func showHideStartScreen() {
        if !logoImg.hidden {
            logoImg.hidden = true
            whatMultipleTxt.hidden = true
            letsMathBtn.hidden = true
        } else {
            logoImg.hidden = false
            whatMultipleTxt.hidden = false
            letsMathBtn.hidden = false
        }
    }
    
    func showHideMathScreen() {
        if !mathLbl.hidden {
            mathLbl.hidden = true
            addBtn.hidden = true
        } else {
            mathLbl.hidden = false
            addBtn.hidden = false
        }
    }

}

