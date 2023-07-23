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
    
    @IBOutlet var yellowSiglan: UIView!
    
    @IBOutlet var greenSignal: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showButton.layer.cornerRadius = 10
    }

    @IBAction func changeNameButton(_ sender: UIButton) {
 
    }
}

