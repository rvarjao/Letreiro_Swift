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
    
    var letreiro : Letreiro!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField.delegate = self
        
        letreiro = Letreiro(frame: viewLetreiro.bounds)
        letreiro.texto = "abcdefghijklmnopqrstuvxyz123456789"
        viewLetreiro.addSubview(letreiro)
        viewLetreiro.backgroundColor = .red
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        letreiro.texto = textField.text!
        textField.resignFirstResponder()
        return true
    }
    
    


}

