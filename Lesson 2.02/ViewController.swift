//
//  ViewController.swift
//  Lesson 2.02
//
//  Created by Kima on 22.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showButton: UIButton!
    
    @IBOutlet var redSignal: UIView!
    
    @IBOutlet var yellowSignal: UIView!
    
    @IBOutlet var greenSignal: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showButton.layer.cornerRadius = 10
        redSignal.layer.cornerRadius = 45
        yellowSignal.layer.cornerRadius = 45
        greenSignal.layer.cornerRadius = 45
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        if redSignal.alpha != 1 && yellowSignal.alpha != 1 && greenSignal.alpha != 1{
            sender.setTitle("NEXT", for: .normal)
            redSignal.alpha = 1
        } else if redSignal.alpha == 1 {
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
        } else if yellowSignal.alpha == 1 {
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
        } else if greenSignal.alpha == 1 {
            greenSignal.alpha = 0.3
            redSignal.alpha = 1
        }
    }
}

