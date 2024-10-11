//
//  ViewController.swift
//  BMI
//
//  Created by Zion Ceus on 10/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var bmiLabelText: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let weight = Double(weightTextField.text!)!
        let height = Double(heightTextField.text!)!
        
        let bmi = weight/(height * height)
        
        var classification:String
        
        
        
        if bmi < 18.5{
            classification = "Underweight"
        }
        else if bmi < 24.9{
            classification = "Healthy Weight"
        }
        else if bmi < 29.9{
            classification = "Overweight"
        }
        else{
            classification = "Obese"
        }
        let formattedBMI = String(format:"%.1f", bmi)
        bmiLabelText.text = "BMI:\(formattedBMI),\(classification)"
    }
    
}

