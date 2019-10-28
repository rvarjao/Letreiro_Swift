//
//  Letreiro.swift
//  Letreiro
//
//  Created by Ricardo Varjão on 07/10/19.
//  Copyright © 2019 Ricardo Varjão. All rights reserved.
//

import UIKit

class Letreiro: UIView {
    
    private let linhas = 6
    var colunas = 40
    var pixels : [[Pixel]] = []
    var texto: String = ""{
        didSet{
            self.reiniciar()
        }
    }
    var cor = UIColor.green{
        didSet{
            for linha in pixels{
                for pixel in linha{
                    pixel.cor = cor
                }
            }
        }
    }
    var posicaoCursor = 0
    
    var formato : Formato = Formato.circulo{
        didSet{
            for linha in pixels{
                for pixel in linha{
                    pixel.formato = self.formato
                }
            }
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

        let timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { timer in
            self.setNeedsDisplay()
        })
        timer.fire()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setArcoIris(arcoIris: Bool){
        if arcoIris{
            //hsb color
            var h : CGFloat = 0
            let s : CGFloat = 1.0
            let b : CGFloat = 1.0
            let dh : CGFloat = 1 / CGFloat(colunas)

            for line in pixels{
                for pixel in line{
                    pixel.cor = UIColor(hue: h, saturation: s, brightness: b, alpha: 1)
                    h += dh
                }
                h = 0
            }
        }else{
            for line in pixels{
                for pixel in line{
                    pixel.cor = cor
                }
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        self.reiniciar()
        let larguraCaractere = 7
        let posicaoMinima = -texto.count * larguraCaractere
        let posicaoCursorInicial = posicaoCursor
        
        for c in texto{
            let conjuntoPixels = Caractere.estados(caractere: c)
            for (i, linha) in conjuntoPixels.enumerated(){
                for (j, estado) in linha.enumerated(){
                    if (j + posicaoCursor >= 0 && j + posicaoCursor < colunas){
                        let pixel = pixels[i][j + posicaoCursor]
                        pixel.ligado = estado
                    }
                }
            }
            posicaoCursor += 6
        }
        
        
        posicaoCursor = posicaoCursorInicial - 1
        if posicaoCursor < posicaoMinima{posicaoCursor = colunas}
    }
    
    func reiniciar(){
        for linha in self.pixels{
            for pixel in linha{
                pixel.ligado = false
            }
        }
    }
}
