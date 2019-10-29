//
//  ViewController.swift
//  Letreiro_Swift
//
//  Created by Ricardo Varjão on 21/10/19.
//  Copyright © 2019 Ricardo Varjão. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var viewLetreiro: UIView!
    
    @IBOutlet weak var sliderCor: UISlider!
    var letreiro : Letreiro!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField.delegate = self
        
        letreiro = Letreiro(frame: viewLetreiro.bounds)
        letreiro.texto = "Letreiro Digital"
        viewLetreiro.addSubview(letreiro)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        letreiro.texto = textField.text!
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        if sliderCor.value == 0{
            letreiro.setArcoIris(arcoIris: true)
        }else{
            letreiro.setArcoIris(arcoIris: false)
            letreiro.cor = UIColor(hue: CGFloat(sliderCor!.value), saturation: 1, brightness: 1, alpha: 1)
        }
    }
    
    @IBAction func segControlFormatoValueChanged(_ sender: Any) {
        let segControl = sender as! UISegmentedControl
        self.letreiro.formato = Formato(rawValue: segControl.selectedSegmentIndex)!
    }
    
}

