//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Emanuel Leal Vila on 16/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var bmiValue: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bmiValue!.color
        bmiResultLabel.text = bmiValue!.value
        messageLabel.text = bmiValue!.advice
    }

    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
