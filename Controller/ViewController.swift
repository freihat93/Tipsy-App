//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tipsyBrain = TipsyBrain()
    
    @IBOutlet weak var enterTextField: UITextField!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitLable: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    @IBAction func slectedButton(_ sender: UIButton) {
        enterTextField.endEditing(true)
        
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
        
        let selected = sender.currentTitle!
        let buttonTitleMinusPercentSign = String(selected.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tip = buttonTitleAsANumber / 100
        
        
        }
    @IBAction func splitStepper(_ sender: UIStepper) {
        splitLable.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = enterTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = numberOfPeople
        }
    }
    
    
    
}

