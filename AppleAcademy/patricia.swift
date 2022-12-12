//
//  patricia.swift
//  AppleAcademy
//
//  Created by Carlos Amaral on 17/09/22.
//

import Foundation

func churrasco() -> Any {
    let max = 10 * 10 * 10 * 10 * 10
    
    var n : Int = 0
    var k : Int = 0
    var d : Int = 0
    var inputAsArrStr : [String] = []
    
    let array = readLine()?.split {$0 == " "}.map (String.init)
    if let stringArray = array { inputAsArrStr = stringArray }
    for (i, j) in inputAsArrStr.enumerated() {
        if let jAsNumber = Int(j) {
            switch i {
            case 0:
                n = jAsNumber
            case 1:
                k = jAsNumber
            default:
                return 0
            }
        }
    }
    
    
    var itemsArrStr : [String] = []
    var itemsArrInt : [Int] = []
    let secondLineInput = readLine()?.split{$0 == " "}.map(String.init)
    if let secondLineArr = secondLineInput { itemsArrStr = secondLineArr }
    for (i, j) in itemsArrStr.enumerated() {
        if let jAsInt = Int(j) { itemsArrInt.append(jAsInt) }
    }
    
    
    if let cobradoInput = readLine() {
        if let cobradoAsInt = Int(cobradoInput) { d = cobradoAsInt }
    }
    
    var totalValue : Int = 0
    for j in itemsArrInt { totalValue += j }
    
    var valorJusto : Int = 0
    
    var patriciaTotal : Int = 0
    for (i, j) in itemsArrInt.enumerated() {
        if i != k { patriciaTotal += j }
    }
    patriciaTotal = patriciaTotal / 2
    valorJusto = patriciaTotal
    
    var robertoTotal : Int = 0
    for (i, j) in itemsArrInt.enumerated() {
        if i == k { robertoTotal += j }
    }
    robertoTotal = robertoTotal + patriciaTotal
    
    var valorCobrado : Int = 0
    for j in itemsArrInt {
        valorCobrado += j
    }
    valorCobrado = valorCobrado / 2
    
    if valorCobrado != valorJusto {
        let result = valorCobrado - valorJusto
        return result
    } else {
        return "QUITES"
    }
}

var res = churrasco()
