//
//  Letreiro.swift
//  Letreiro
//
//  Created by Ricardo Varjão on 07/10/19.
//  Copyright © 2019 Ricardo Varjão. All rights reserved.
//

import UIKit

struct Resolucao {
    var linhas = 7
    var colunas = 50
}
class Letreiro: UIView {
    var resolucao = Resolucao()
//    private let linhas = 7
//    var colunas = 50
    var pixels = [Pixel]()
    var texto: String = ""{
        didSet{
            self.reiniciar()
        }
    }
    
    
    private var timerAnimacao : Timer!

    var animado : Bool = true{
        didSet{
            if animado{
                timerAnimacao.fire()
            }else{
                timerAnimacao.invalidate()
            }
        }
    }
    
    
    var cor = UIColor.green{
        didSet{
            for pixel in pixels{
                pixel.cor = cor
            }
        }
    }
    var posicaoCursor = 0
    
    var formato : Formato = Formato.circulo{
        didSet{
            for pixel in pixels{
                pixel.formato = self.formato
                self.reiniciar()
            }
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        var x : CGFloat = 0
        var y : CGFloat = 0
        let colunas = resolucao.colunas
        let linhas = resolucao.linhas
        
        let width : CGFloat = min(frame.width / CGFloat(colunas), frame.height / CGFloat(linhas))
        let height : CGFloat = width

        let size = colunas * linhas
        var coluna = 0
        var linha = 0
        
        var pixel : Pixel!
        
        for _ in 0...size - 1{
            pixel = Pixel(frame: CGRect(x: x,y: y,width: width,height: height))
            pixels.append(pixel)
            self.addSubview(pixel)

            if coluna == colunas - 1{
                x = 0
                y += height
                coluna = 0
                linha += 1
            }else{
                coluna += 1
                x = CGFloat(coluna) * width
            }
            posicaoCursor = colunas - 1
        }
        timerAnimacao = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { timer in
            self.setNeedsDisplay()
        })
        if animado{
            timerAnimacao.fire()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setArcoIris(arcoIris: Bool){
        if arcoIris{
            let colunas = resolucao.colunas
            
            //hsb color
            var h : CGFloat = 0
            let s : CGFloat = 1.0
            let b : CGFloat = 1.0
            let dh : CGFloat = 1 / CGFloat(colunas)
            
            for (i, pixel) in pixels.enumerated(){
                h = (i % colunas == 0) ? 0 : h + dh
                pixel.cor = UIColor(hue: h, saturation: s, brightness: b, alpha: 1)
            }
        }else{
            for pixel in pixels{
                pixel.cor = cor
            }
            if !animado{self.setNeedsDisplay()}
        }
    }
    
    override func draw(_ rect: CGRect) {
        self.reiniciar()
        let posicaoMinima = -texto.count * Caractere.larguraCaractere
        let posicaoCursorInicial = posicaoCursor
        let colunas = resolucao.colunas
        
        var pixelIndex : Int!
        var pixel : Pixel!
        
        for c in texto{
            let conjuntoPixels = Caractere.estados(caractere: c)
            
            for (i, linha) in conjuntoPixels.enumerated(){
                for (j, estado) in linha.enumerated(){
                    if (j + posicaoCursor >= 0 && j + posicaoCursor < colunas){
                        pixelIndex = i * colunas + j + posicaoCursor
                        pixel = pixels[pixelIndex]
                        pixel.ligado = estado                        
                    }
                }
            }
            posicaoCursor += Caractere.larguraCaractere + 1
        }
        if animado{
            posicaoCursor = (posicaoCursor < posicaoMinima) ? colunas - 1: posicaoCursorInicial - 1
        }else{
            posicaoCursor = posicaoCursorInicial
        }
    }
    
    func reiniciar(){
        for pixel in self.pixels{
                pixel.ligado = false
        }
        if !animado{self.setNeedsDisplay()}
    }
}
