//
//  UnitTestPresenter.swift
//  UniTestCiceBootcamp2022
//
//  Created by TECDATA ENGINEERING on 8/3/22.
//

import Foundation
enum SomeError: Error {
    case CeroError
}

protocol UnitTestPresenterInputProtocol{}

final class UnitTestPresenter{
    
    func sumar(numewro1: Int, numero2: Int) -> Int {
        return numewro1 + numero2
    }
    
    func restar(numero1: Int, numero2: Int) -> Int {
        return numero1 - numero2
    }
    
    func dividir(numero1: Int, numero2: Int) -> Int {
        return numero1 / numero2
    }
    
    func dividirCero(numero1: Int, numero2: Int) throws -> Int {
        if numero2 == 0{
            throw SomeError.CeroError
        }
        return numero1 / numero2
    }
    
    func arraySquareOptionOne(numberArray: [Int]) -> [Int] {
        var result: [Int] = []
        for index in numberArray {
            result.append(index * index)
        }
        return result
    }
    
    func arraySquareOptionTwo(numberArray: [Int]) -> [Int] {
        let result = numberArray.map { numberArray in
            numberArray * numberArray
        }
        return result
    }
    
    func arraySquareOptionThree(numberArray: [Int]) -> [Int] {
        return numberArray.map { $0 * $0 }
    }
    
    func toFah(degreeUnit: Double) -> Double {
        return (degreeUnit * (9 * 0.2)) + 32
    }
    
    func toDre(fahUnit: Double) -> Double {
        return (fahUnit - 32) * 5/9
    }
    
    func toFahTwo(degreeUnit: Double) -> Double {
        return (degreeUnit * 9/5) + 32
    }
    
    
}

extension UnitTestPresenter: UnitTestPresenterInputProtocol{}
