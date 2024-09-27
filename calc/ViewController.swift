//
//  ViewController.swift
//  calc
//
//  Created by Sultan Kubentayev on 27/09/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
//        label.text = textField1.text
        let a = textField1.text!
        let b = textField2.text!
//        let sum = (Double(a) ?? 0) + (Double(b) ?? 0)
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
        let sum = numberA + numberB
        label.text = String(sum)
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
        let sum = numberA - numberB
        label.text = String(sum)
    }
    
    @IBAction func multiply(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA * numberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA / numberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func percent(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA/100 * numberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func mod(_ sender: Any) {
        let a = textField1.text!
        let b = textField2.text!
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA % numberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        label.text = "Calculator"
        textField1.text = ""
        textField2.text = ""
    }
    
    
    
    
    
    
}

