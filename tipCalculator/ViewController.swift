//
//  ViewController.swift
//  tipCalculator
//
//  Created by Edward de los Santos on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmtTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmtSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get intial bill amount and calculate tips
        let bill = Double(billAmtTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        
        // Calculate tip and total
        let tip = bill * tipPercentages[tipAmtSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

