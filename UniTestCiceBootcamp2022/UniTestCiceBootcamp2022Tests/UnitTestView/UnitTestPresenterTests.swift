//
//  UnitTestPresenterTests.swift
//  UniTestCiceBootcamp2022Tests
//
//  Created by TECDATA ENGINEERING on 8/3/22.
//

import XCTest
@testable import UniTestCiceBootcamp2022

class UnitTestPresenterTests: XCTestCase {

    // Subjet Under Test -> Sujeto bajo prueba
    var presenter: UnitTestPresenter!
    
    override func setUp() {
        // iniciliza todas las instancias del objeto bajo prueba
        print(#function, "<-- ZZZ")
        presenter = UnitTestPresenter()
    }
    
    override func tearDown() {
        // Elimina las instancias por cada test que se ejecuta
        print(#function, "<-- YYY")
        presenter = nil
    }
    
    func test_UnitTestPresenter_NotNil() {
        print(#function, "<-- AAA")
        XCTAssertNotNil(presenter)
    }
    
    // Nombre del metodo / status bajo prueba / comportamiento esperado
    func test_Sumar_InputCorrecto_OK_Result() {
        // 1 -> Arrange / GIVEN
        let resultExpected = 11
        let result: Int
        // 2 -> Action / WHEN
        result = presenter.sumar(numewro1: 7, numero2: 4)
        // 3 -> Assert / THEN
        XCTAssertEqual(resultExpected, result)
    }
    
    func test_Restar_InputCorrecto_OK_Result() {
        let resultExpected = 3
        let result: Int
        result = presenter.restar(numero1: 7, numero2: 4)
        XCTAssertEqual(resultExpected, result)
    }
    
    func test_Restar_InputCorrecto_Two_OK_Result() {
        let resultExpected = -10
        let result: Int
        result = presenter.restar(numero1: 10, numero2: 20)
        XCTAssertEqual(resultExpected, result)
    }
    
    func test_Dividri_InputCorrect_OK_Result() {
        XCTAssertEqual(2, presenter.dividir(numero1: 4, numero2: 2))
    }
    
    func test_Dividir_InputIncorrect_OK_Result() {
        XCTAssertEqual(2, try presenter.dividirCero(numero1: 4, numero2: 2))
        XCTAssertThrowsError(try presenter.dividirCero(numero1: 4, numero2: 0))
    }
    
    func test_Array_Square_Option_One_Result() {
        var numbers = [Int]()
        for index in 1...4{
            numbers.append(index)
        }
        
        let numberSquare = presenter.arraySquareOptionOne(numberArray: numbers)
        
        var resultExpected = [Int]()
        resultExpected.append(1)
        resultExpected.append(4)
        resultExpected.append(9)
        resultExpected.append(16)
        
        XCTAssertEqual(resultExpected, numberSquare)
    }
    
    func test_Array_Square_Option_Two_Result() {
        var numbers = [Int]()
        for index in 1...4{
            numbers.append(index)
        }
        
        let numberSquare = presenter.arraySquareOptionTwo(numberArray: numbers)
        
        var resultExpected = [Int]()
        resultExpected.append(1)
        resultExpected.append(4)
        resultExpected.append(9)
        resultExpected.append(16)
        
        XCTAssertEqual(resultExpected, numberSquare)
    }
    
    func test_Array_Square_Option_Three_Result() {
        var numbers = [Int]()
        for index in 1...4{
            numbers.append(index)
        }
        
        let numberSquare = presenter.arraySquareOptionThree(numberArray: numbers)
        
        var resultExpected = [Int]()
        resultExpected.append(1)
        resultExpected.append(4)
        resultExpected.append(9)
        resultExpected.append(16)
        
        XCTAssertEqual(resultExpected, numberSquare)
    }
    
    func test_Assert_Types() {
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 == 2)
        XCTAssertNil(nil)
        XCTAssertNotNil(self.presenter)
        XCTAssertEqual(self.presenter.sumar(numewro1: 2, numero2: 2), 4)
        XCTAssertEqual("Andres", "Andres")
        XCTAssertGreaterThan(10, 1)
    }
    
    func test_Performance_Sut_Dividir() {
        self.measure {
            self.presenter.dividir(numero1: 4, numero2: 2)
        }
    }
    
    func test_Performance_array_Square_Option_One() {
        var number = [Int]()
        for index in 1...5000000{
            number.append(index)
        }
        self.measure {
            self.presenter.arraySquareOptionOne(numberArray: number)
        }
    }
    
    func test_Performance_array_Square_Option_Two() {
        var number = [Int]()
        for index in 1...5000000{
            number.append(index)
        }
        self.measure {
            self.presenter.arraySquareOptionTwo(numberArray: number)
        }
    }
    
    func test_Performance_array_Square_Option_Three() {
        var number = [Int]()
        for index in 1...5000000{
            number.append(index)
        }
        self.measure {
            self.presenter.arraySquareOptionThree(numberArray: number)
        }
    }
    
    func test_Performance_toFha_One_Result() {
        let expectedResult: Double = -9.4
        let result = self.presenter.toFah(degreeUnit: -23)
        XCTAssertEqual(expectedResult, result, accuracy: 0.001)
        self.measure {
            result
        }
    }
    
    func test_Performance_toFha_Two_Result() {
        let expectedResult: Double = -9.4
        let result = self.presenter.toFahTwo(degreeUnit: -23)
        XCTAssertEqual(expectedResult, result, accuracy: 0.001)
        self.measure {
            result
        }
    }
    
    

}
