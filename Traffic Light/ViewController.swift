//
//  ViewController.swift
//  Traffic Light
//
//  Created by Denis Abramov on 24.07.2019.
//  Copyright © 2019 Denis Abramov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
        sender.tag += 1
        if sender.tag > 2 {
            sender.tag = 0
        }
        switch sender.tag {
        case 1:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        case 2:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        default:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    }
}
