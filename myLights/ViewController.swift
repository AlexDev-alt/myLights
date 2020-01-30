//
//  ViewController.swift
//  Lights
//
//  Created by Macbook on 29.01.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
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
    
    let on = 1
    let off = 0
    
    var redOn = 1
    var yellowOn = 0
    var greenOn = 0
    
    
    @IBAction func showButtonPressed() {
        
        if redOn == on {
            greenView.alpha = 0.3
            redView.alpha = 1
            buttonPressedView.setTitle("Next", for: .normal)
            redOn = off
            yellowOn = on
            
        } else if yellowOn == on {
            
            redView.alpha = 0.3
            yellowView.alpha = 1
            yellowOn = off
            greenOn = on
            
        } else if greenOn == on {
            
            yellowView.alpha = 0.3
            greenView.alpha = 1
            redOn = on
            greenOn = off
        }
    }
}

