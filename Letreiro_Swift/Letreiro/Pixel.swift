//
//  Pixel.swift
//  Letreiro
//
//  Created by Ricardo Varjão on 07/10/19.
//  Copyright © 2019 Ricardo Varjão. All rights reserved.
//

import UIKit

enum Formato : Int{
    case circulo = 0, quadrado = 1
}

class Pixel: UIView {
    var cor : UIColor = .green
    var ligado : Bool = false{
        didSet{
            self.setNeedsDisplay()
        }
    }
    var formato : Formato = Formato.circulo
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        switch formato {
        case Formato.circulo:
            if (ligado == true){
                context?.setFillColor(cor.cgColor)
                context?.setStrokeColor(UIColor.clear.cgColor)
                context?.fillEllipse(in: rect)
            }else{
                context?.setStrokeColor(UIColor.darkGray.cgColor)
                context?.setFillColor(UIColor.clear.cgColor)
                context?.strokeEllipse(in: rect)
            }
        case Formato.quadrado:
            if (ligado == true){
                context?.setFillColor(cor.cgColor)
                context?.setStrokeColor(UIColor.clear.cgColor)
                context?.fill(rect)
            }else{
                context?.setStrokeColor(UIColor.darkGray.cgColor)
                context?.setFillColor(UIColor.clear.cgColor)
                context?.stroke(rect)
            }
        }
    }
}
