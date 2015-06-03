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
    @IBOutlet weak var shoeSizeTextField: UITextField!
    @IBOutlet weak var usSizeTitle: UILabel!
    @IBOutlet weak var euroSizeTitle: UILabel!
    @IBOutlet weak var usSizeValue: UILabel!
    @IBOutlet weak var euroSizeValue: UILabel!
    
    var genderTab = ""
    
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
    
    
    @IBAction func setGender(sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            genderTab = "MEN"
            headerLabel.text = "ENTER A MENS SHOE SIZE"
        } else {
            genderTab = "WOMEN"
            headerLabel.text = "ENTER A WOMENS SHOE SIZE"
        }
    }
    
    @IBAction func convertButton(sender: UIButton) {
        
        if genderTab != "WOMEN" {
            if shoeSizeTextField.text == "" {
                // PREVENT CRASH
            } else {
                usSizeTitle.text = "US SIZE (MEN)"
                euroSizeTitle.text = "EURO SIZE (MEN)"
                shoeSizeTextField.resignFirstResponder()
                let mensShoeTextField = Double((shoeSizeTextField.text as NSString).doubleValue)
                let menConversionConstant = 30.0
                usSizeTitle.hidden = false
                usSizeValue.hidden = false
                usSizeValue.text = "\(mensShoeTextField)"
                euroSizeTitle.hidden = false
                euroSizeValue.hidden = false
                euroSizeValue.text = "\(mensShoeTextField + menConversionConstant)"
                shoeSizeTextField.text = ""
            }
        } else {
            if shoeSizeTextField.text == "" {
                // PREVENT CRASH
            } else {
                usSizeTitle.text = "US SIZE (WOMEN)"
                euroSizeTitle.text = "EURO SIZE (WOMEN)"
                shoeSizeTextField.resignFirstResponder()
                let womensShoeTextField = Double((shoeSizeTextField.text as NSString).doubleValue)
                let womenConversionConstant = 30.5
                usSizeTitle.hidden = false
                usSizeValue.hidden = false
                usSizeValue.text = "\(womensShoeTextField)"
                euroSizeTitle.hidden = false
                euroSizeValue.hidden = false
                euroSizeValue.text = "\(womensShoeTextField + womenConversionConstant)"
                shoeSizeTextField.text = ""
            }
        }
        
    }
}

