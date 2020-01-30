//
//  ViewController.swift
//  Lights
//
//  Created by Macbook on 29.01.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var redOn = 1
    var yellowOn = 0
    var greenOn = 0
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var buttonPressedView: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 50
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = 50
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = 50
        greenView.alpha = 0.3
        
        buttonPressedView.layer.cornerRadius = 5
        buttonPressedView.setTitle("Start", for: .normal)
    }


    @IBAction func showButtonPressed() {
    
        if redOn == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
            buttonPressedView.setTitle("Next", for: .normal)
            redOn = 0
            yellowOn = 1
            
        } else if yellowOn == 1 {
            
            redView.alpha = 0.3
            yellowView.alpha = 1
            yellowOn = 0
            greenOn = 1
            
        } else if greenOn == 1 {
            
            yellowView.alpha = 0.3
            greenView.alpha = 1
            redOn = 1
            greenOn = 0
        }
    }
}

