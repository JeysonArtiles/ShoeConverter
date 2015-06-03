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
        
        menShoeTextField.resignFirstResponder()
        womenShoeTextField.resignFirstResponder()
        
        
    }
}

