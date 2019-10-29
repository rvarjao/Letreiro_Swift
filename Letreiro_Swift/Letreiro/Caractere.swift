//
//  Caractere.swift
//  Letreiro_Swift
//
//  Created by Ricardo Varjão on 21/10/19.
//  Copyright © 2019 Ricardo Varjão. All rights reserved.
//

import UIKit


class Caractere: NSObject {

    class var larguraCaractere : Int{
        get{return 5}
    }

    class func estados(caractere: Character) -> [[Bool]]{
        let c = caractere.uppercased()

        switch c {
        case "A":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, true, true, true, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
            ]
        case "B":
            return [
                   [true, true, true, true, false],
                   [true, false, false, false, true],
                   [true, false, false, false, true],
                   [true, true, true, true, false],
                   [true, false, false, false, true],
                   [true, false, false, false, true],
                   [true, true, true, true, false]
            ]
        case "C":
            return [
                [false, true , true , true , false],
                [true , false, false, false, true ],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , false, false, false, true ],
                [false, true , true , true , false]
            ]
        case "D":
            return [
                [true , true , true , true , false],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , true , true , true , false]
            ]
        case "E":
            return [
                [true , true , true , true , true ],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , true , true , true , false],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , true , true , true , true ]
            ]
        case "F":
            return [
                [true , true , true , true , true ],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , true , true , true , false],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , false, false, false, false]
            ]
        case "G":
            return [
                [false, true , true , true , false],
                [true , false, false, false, true ],
                [true , false, false, false, false],
                [true , false, false, false, false],
                [true , false, false, true , true ],
                [true , false, false, false, true ],
                [false, true , true , true , false]
            ]
        case "H":
            return [
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , true , true , true , true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ]
            ]
        case "I":
            return [
                [false, true , true , true , false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, true , true , true , false]
            ]
        case "S":
            return [
                [false, true , true , true , false],
                [true , false, false, false, true ],
                [true , false, false, false, false],
                [false, true , true , true , false],
                [false, false, false, false, true ],
                [true , false, false, false, true ],
                [false, true , true , true , false]
            ]
        case "T":
            return [
                [true , true , true , true , true ],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false]
            ]
        case "U":
            return [
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [false, true , true , true , false]
            ]
        case "V":
            return [
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [false, true , false, true , false],
                [false, false, true , false, false]
            ]
        case "W":
            return [
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [true , false, true , false, true ],
                [true , true , false, true , true ],
                [true , false, false, false, true ]
            ]
        case "X":
            return [
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [false, true , false, true , false],
                [false, false, true , false, false],
                [false, true , false, true , false],
                [true , false, false, false, true ],
                [true , false, false, false, true ]
            ]
        case "Y":
            return [
                [true , false, false, false, true ],
                [true , false, false, false, true ],
                [false, true , false, true , false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false],
                [false, false, true , false, false]
            ]
        case "Z":
            return [
                [true , true , true , true , true ],
                [false, false, false, false, true ],
                [false, false, false, true , false],
                [false, false, true , false, false],
                [false, true , false, false, false],
                [true , false, false, false, false],
                [true , true , true , true , true ]
            ]
        case "0":
            return [
                [false, true , true , true , false],
                [true , false, false, false, true ],
                [true , false, false, true , true ],
                [true , false, true , false, true ],
                [true , true , false, false, true ],
                [true , false, false, false, true ],
                [false, true , true , true , false]
            ]
        case "J":
        return [
            [false, false, false, false, true],
            [false, false, false, false, true],
            [false, false, false, false, true],
            [false, false, false, false, true],
            [false, false, false, false, true],
            [true, false, false, false, true],
            [false, true, true, true, false]
            ]
        case "K":
        return [
            [true, false, false, false, true],
            [true, false, false, false, true],
            [true, false, false, true, false],
            [true, true, true, false, false],
            [true, false, false, true, false],
            [true, false, false, false, true],
            [true, false, false, false, true]
        ]
        case "L":
            return [
            [true, false, false, false, false],
            [true, false, false, false, false],
            [true, false, false, false, false],
            [true, false, false, false, false],
            [true, false, false, false, false],
            [true, false, false, false, false],
            [true, true, true, true, true]
        ]
        case "M":
            return [
                [true, false, false, false, true],
                [true, true, false, true, true],
                [true, false, true, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true]
            ]
        case "N":
            return [
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, true, false, false, true],
                [true, false, true, false, true],
                [true, false, false, true, true],
                [true, false, false, false, true]
            ]
        case "O":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false]
            ]
        case "P":
            return [
                [true, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, true, true, true, false],
                [true, false, false, false, false],
                [true, false, false, false, false],
                [true, false, false, false, false]
            ]
        case "Q":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, false, false, true, true],
                [false, true, true, true, true]
            ]
        case "R":
            return [
                [true, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [true, true, true, true, false],
                [true, false, true, false, false],
                [true, false, false, true, false],
                [true, false, false, false, true]
            ]
        case "1":
            return [
                [false, false, true, false, false],
                [false, true, true, false, false],
                [false, false, true, false, false],
                [false, false, true, false, false],
                [false, false, true, false, false],
                [false, false, true, false, false],
                [false, true, true, true, false]
            ]
        case "2":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [false, false, false, false, true],
                [false, false, false, true, false],
                [false, false, true, false, false],
                [false, true, false, false, false],
                [true, true, true, true, true]
            ]
        case "3":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [false, false, false, false, true],
                [false, false, true, true, false],
                [false, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false]
            ]
        case "4":
            return [
                [false, false, false, true, false],
                [false, false, true, true, false],
                [false, true, false, true, false],
                [true, false, false, true, false],
                [true, true, true, true, true],
                [false, false, false, true, false],
                [false, false, false, true, false]
            ]
        case "5":
            return [
                [true, true, true, true, true],
                [true, false, false, false, false],
                [true, true, true, true, false],
                [false, false, false, false, true],
                [false, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false]
            ]
        case "6":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, false],
                [true, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false]
            ]
        case "7":
            return [
                [true, true, true, true, true],
                [false, false, false, false, true],
                [false, false, false, true, false],
                [false, false, true, false, false],
                [false, false, true, false, false],
                [false, false, true, false, false],
                [false, false, true, false, false]
            ]
        case "8":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false]
            ]
        case "9":
            return [
                [false, true, true, true, false],
                [true, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, true],
                [false, false, false, false, true],
                [true, false, false, false, true],
                [false, true, true, true, false]
            ]
        case ":":
            return [
                [false, false, false, false, false],
                [false, false, false, false, false],
                [false, false, true, false, false],
                [false, false, false, false, false],
                [false, false, true, false, false],
                [false, false, false, false, false],
                [false, false, false, false, false]
            ]
        case " ":
            return [
                [false, false, false, false, false],
                [false, false, false, false, false],
                [false, false, false, false, false],
                [false, false, false, false, false],
                [false, false, false, false, false],
                [false, false, false, false, false],
                [false, false, false, false, false]
            ]
        default:
            return estados(caractere: " ")
        }
    }
    
}
