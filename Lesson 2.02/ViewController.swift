//
//  ViewController.swift
//  Lesson 2.02
//
//  Created by Kima on 22.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    private let lightOn: CGFloat = 1
    private let lightOut: CGFloat = 0.3
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redSignal.alpha = lightOut
        yellowSignal.alpha = lightOut
        greenSignal.alpha = lightOut
    }
    
    @IBAction func actionButton() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenSignal.alpha = lightOut
            redSignal.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redSignal.alpha = lightOut
            yellowSignal.alpha = lightOn
            currentLight = .green
        case .green:
            yellowSignal.alpha = lightOut
            greenSignal.alpha = lightOn
            currentLight = .red
        }
    }
}

extension ViewController {
    enum CurrentLight {
        case red, yellow, green
    }
}
