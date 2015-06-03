//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Jeyson Artiles on 6/2/15.
//  Copyright (c) 2015 Jeyson Artiles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // HEADER FOR : INSTRUCTIONS | ERROR MESSAGE
    @IBOutlet weak var headerLabel: UILabel!
    
    // USER ENTERED SHOE SIZE
    @IBOutlet weak var enteredShoeSizeMens: UITextField!
    @IBOutlet weak var enteredShoeSizeWomens: UITextField!
    // US SHOE SIZE
    @IBOutlet weak var usSizeResultTitle: UILabel!
    @IBOutlet weak var usSizeResultValue: UILabel!
    // EURO SHOE SIZE
    @IBOutlet weak var euroSizeResultTitle: UILabel!
    @IBOutlet weak var euroSizeResultValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enteredShoeSizeMens.text = ""
        enteredShoeSizeWomens.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // CONVERT BUTTON FUNCTION
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        // MENS SHOE SIZES
        let sizeFromEnteredShoeSizeMens = enteredShoeSizeMens.text.toInt()! // GET USER SIZE FROM TEXTFIELD
        let conversionValueMens = 33 // SET THE CONVERNSION VALUE (I.E. 30 PLUS USER ENTERED SHOE SIZE)
        let convertedShoeSizeMens = "\(sizeFromEnteredShoeSizeMens + conversionValueMens)" // CONVERT INTEGER INTO STRING
        // WOMENS SHOE SIZES
        let sizeFromEnteredShoeSizeWomens = enteredShoeSizeWomens.text.toInt()! // GET USER SIZE FROM TEXTFIELD
        let conversionValueWomens = 33 // SET THE CONVERNSION VALUE (I.E. 30 PLUS USER ENTERED SHOE SIZE)
        let convertedShoeSizeWomens = "\(sizeFromEnteredShoeSizeWomens + conversionValueWomens)!" // CONVERT INTEGER INTO STRING
        
        if enteredShoeSizeMens! != "" && enteredShoeSizeWomens! == "" {
            enteredShoeSizeWomens.text = ""
            usSizeResultValue.text = enteredShoeSizeMens.text // DISPLAY US SIZE
            euroSizeResultValue.text = convertedShoeSizeMens // DISPLAY EURO SIZE
        } else {
            enteredShoeSizeMens.text = ""
            usSizeResultValue.text = enteredShoeSizeWomens.text // DISPLAY US SIZE
            euroSizeResultValue.text = convertedShoeSizeWomens // DISPLAY EURO SIZE
        }
        
        enteredShoeSizeMens.text = "" // CLEAR TEXTFIELD ON BUTTON PRESS
        enteredShoeSizeWomens.text = "" // CLEAR TEXTFIELD ON BUTTON PRESS
        enteredShoeSizeMens.resignFirstResponder() // REMOVE ANNOYING KEYBOARD ON BUTTON PRESS
        enteredShoeSizeWomens.resignFirstResponder() // REMOVE ANNOYING KEYBOARD ON BUTTON PRESS
        
        // DEFINING MIN - MAX MENS SHOE SIZE
        if sizeFromEnteredShoeSizeMens <= 5 || sizeFromEnteredShoeSizeMens > 16 { // SET FAILED CALCULATION
            headerLabel.backgroundColor = UIColor.redColor()
            headerLabel.textColor = UIColor.whiteColor()
            headerLabel.text = "ENTER A SHOE SIZE"
            usSizeResultTitle.hidden = true
            usSizeResultValue.hidden = true
            euroSizeResultTitle.hidden = true
            euroSizeResultValue.hidden = true
        } else { // SET SUCCESSFUL CALCULATION
            headerLabel.backgroundColor = UIColor.lightGrayColor()
            headerLabel.textColor = UIColor.blackColor()
            headerLabel.text = "ENTER A SHOE SIZE"
            usSizeResultTitle.hidden = false
            usSizeResultValue.hidden = false
            euroSizeResultTitle.hidden = false
            euroSizeResultValue.hidden = false
        }
    }
}

