//
//  Letreiro.swift
//  Letreiro
//
//  Created by Ricardo Varjão on 07/10/19.
//  Copyright © 2019 Ricardo Varjão. All rights reserved.
//

import UIKit

class Letreiro: UIView {
    
    private let linhas = 7
    var colunas = 100
    var pixels : [[Pixel]] = []
    var texto: String = ""{
        didSet{
            self.reiniciar()
            self.setNeedsDisplay()
        }
    }

    
    override init(frame: CGRect){
        super.init(frame: frame)
        var x : CGFloat = 0
        var y : CGFloat = 0
                
        let width : CGFloat = min(frame.width / CGFloat(colunas), frame.height / CGFloat(linhas))
        let height : CGFloat = width
        
        for i in 0...linhas{
            pixels.append([])
            for _ in 0...colunas{
                let pixel = Pixel(frame: CGRect(x: x,y: y,width: width,height: height))
                pixels[i].append(pixel)
                self.addSubview(pixel)
                x += width
            }
            x = 0
            y += height
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func draw(_ rect: CGRect) {
        var posicao = 0
        for c in texto{
            let conjuntoPixels = Caractere.estados(caractere: c)
            for (i, linha) in conjuntoPixels.enumerated(){
                for (j, estado) in linha.enumerated(){
                    if (j + posicao >= 0 && j + posicao < colunas){
                        let pixel = pixels[i][j + posicao]
                        pixel.ligado = estado
                    }
                }
            }
            posicao += 6
        }
    }
    
    func reiniciar(){
        for linha in self.pixels{
            for pixel in linha{
                pixel.ligado = false
            }
        }
    }
}
