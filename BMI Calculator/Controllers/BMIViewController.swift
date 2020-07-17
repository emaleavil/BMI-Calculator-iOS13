//
//  BMIViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit 

class BMIViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heigthSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var calculatorBrain = CalculatorBrain()
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm",sender.value)
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fKg",sender.value) 
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        calculatorBrain.calculateBMI(weight: weightSlider.value,height: heigthSlider.value)
        self.performSegue(withIdentifier: "goResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ResultViewController {
            destinationVC.modalPresentationStyle = .fullScreen
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
}

