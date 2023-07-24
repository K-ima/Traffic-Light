//
//  ViewController.swift
//  Lesson 2.02
//
//  Created by Kima on 22.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var showButton: UIButton!
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showButton.layer.cornerRadius = 10
        redSignal.layer.cornerRadius = redSignal.frame.width / 2
        yellowSignal.layer.cornerRadius = yellowSignal.frame.width / 2
        greenSignal.layer.cornerRadius = greenSignal.frame.width / 2
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        if redSignal.alpha != 1 && yellowSignal.alpha != 1 && greenSignal.alpha != 1{
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

