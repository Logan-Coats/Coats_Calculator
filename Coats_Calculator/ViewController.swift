//
//  ViewController.swift
//  Coats_Calculator
//
//  Created by Logan Coats on 9/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    var operand1 : Double = 0
    var operand2 : Double = 0
    var operation = ""
    var results :Double = 0
    func numberpressed(buttonpressed:Double){
        if(operation == ""){
            if(operand1 == 0){
                operand1 = buttonpressed
            }else{
                operand1 = (operand1*10) + buttonpressed
            }
            printLabel()
        }else{
            if(operand2 == 0){
                operand2 = buttonpressed
            }else{
                operand2 = (operand2*10) + buttonpressed
            }
            printLabel()
        }
    }
    func printLabel(){
        if (operation == ""){
            resultLabel.text = "\(operand1)"
        }else{
            resultLabel.text = "\(operand2)"
        }
        
    }
    
    func operationPressed(){
        if(operand2 != 0){
            operand2 = 0
        }
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func ACButton(_ sender: Any) {
        operand1 = 0
        operand2 = 0
        operation = ""
        results = 0
        resultLabel.text = ""
    }
    
    @IBAction func CButton(_ sender: Any) {
        if (operation == "") {
            operand1 = 0
        } else {
            operand2 = 0
        }
        printLabel()
    }
    
    @IBAction func posnegButton(_ sender: Any) {
        if (operation == "") {
            operand1 *= -1
        } else {
            operand2 *= -1
        }
        printLabel()
    }
    
    @IBAction func divideButton(_ sender: Any) {
        operation = "÷"
        operationPressed()
    }
    
    @IBAction func plusButton(_ sender: Any) {
        operation = "+"
        operationPressed()
    }
    
    @IBAction func minusButton(_ sender: Any) {
        operation = "-"
        operationPressed()
    }
    
    @IBAction func timesButton(_ sender: Any) {
        operation = "x"
        operationPressed()
    }
    
    @IBAction func enterButton(_ sender: Any) {
        switch operation {
        case "÷":
            if (operand2 == 0){
                resultLabel.text = "Error"
            }else{
                results = operand1 / operand2
                resultLabel.text = "\(results)"
            }
        case "+":
            results = operand1 + operand2
            resultLabel.text = "\(results)"
        case "-":
            results = operand1 - operand2
            resultLabel.text = "\(results)"
        case "x":
            results = operand1 * operand2
            resultLabel.text = "\(results)"
        default:
            //do nothing
            results = operand1
            resultLabel.text = "\(results)"
        }
        
        operand1 = results
    }
    
    @IBAction func oneButton(_ sender: Any) {
        numberpressed(buttonpressed: 1)
    }
    
    @IBAction func twoButton(_ sender: Any) {
        numberpressed(buttonpressed: 2)
    }
    
    @IBAction func threeButton(_ sender: Any) {
        numberpressed(buttonpressed:3)
    }
    
    @IBAction func fourButton(_ sender: Any) {
        numberpressed(buttonpressed:4)
    }
    
    @IBAction func fiveButton(_ sender: Any){
        numberpressed(buttonpressed:5)
    }
    
    @IBAction func sixButton(_ sender: Any) {
        numberpressed(buttonpressed:6)
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        numberpressed(buttonpressed:7)
    }
    
    @IBAction func eightButton(_ sender: Any) {
        numberpressed(buttonpressed:8)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        numberpressed(buttonpressed:9)
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        numberpressed(buttonpressed:0)
    }
    override func viewDidLoad() {
        resultLabel.text = "\(operand1)"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

