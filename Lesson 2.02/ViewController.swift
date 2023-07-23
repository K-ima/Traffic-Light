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
        
        if redSignal.alpha == 0.3 && yellowSignal.alpha == 0.3 && greenSignal.alpha == 0.3 {
            showButton.setTitle("START", for: .normal)
        } else {
            showButton.setTitle("NEXT", for: .normal)
        }
    }

    @IBAction func actionButton(_ sender: UIButton) {
        switch (redSignal.alpha, yellowSignal.alpha, greenSignal.alpha) {
        case (0.3, 0.3, 0.3):
            redSignal.alpha = 1
        case (1, 0.3, 0.3):
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
        case (0.3, 1, 0.3):
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
        case (0.3, 0.3, 1):
            greenSignal.alpha = 0.3
            redSignal.alpha = 1
        default: print("Ошибка")
        }
    }
}


