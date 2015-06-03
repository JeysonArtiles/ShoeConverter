//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Jeyson Artiles on 6/2/15.
//  Copyright (c) 2015 Jeyson Artiles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var menShoeTextField: UITextField!
    @IBOutlet weak var womenShoeTextField: UITextField!
    @IBOutlet weak var usSizeTitle: UILabel!
    @IBOutlet weak var euroSizeTitle: UILabel!
    @IBOutlet weak var usSizeValue: UILabel!
    @IBOutlet weak var euroSizeValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usSizeTitle.hidden = true
        usSizeValue.hidden = true
        euroSizeTitle.hidden = true
        euroSizeValue.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func convertButton(sender: UIButton) {
        
        if menShoeTextField.text == "" {
            println("NIL")
        } else {
            headerLabel.textColor = UIColor.blackColor()
            headerLabel.backgroundColor = UIColor.lightGrayColor()
            menShoeTextField.resignFirstResponder()
            var mensShoeTextFieldToInt = menShoeTextField.text.toInt()!
            let menConversionConstant = 30
            usSizeTitle.hidden = false
            usSizeValue.hidden = false
            usSizeValue.text = "\(mensShoeTextFieldToInt)"
            euroSizeTitle.hidden = false
            euroSizeValue.hidden = false
            euroSizeValue.text = "\(mensShoeTextFieldToInt + menConversionConstant)"
            menShoeTextField.text = ""
        }
    }
}

