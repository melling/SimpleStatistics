//
//  GammaFunction.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation
//import Darwin // pow

public extension SimpleStatistics {

    /*
     
     */
    
    func calculate_gamma_pdf(_ x:Double) -> Double {
        
        /*
         Helper function to calculate Gamma PDF for value x.
         */
        let first_part = (2 * Double.pi / x).squareRoot()
        let second_part = pow((1 / M_E) * (x + (1 / ((12*x) - (1/10*x)))), x)
        
        return first_part * second_part
    }
    
    func gamma_function(_ x:Double) -> Double {
        calculate_gamma_pdf(x)
    }
    
    func gamma_function(_ x:Int) -> Int {
        factorial(x - 1)
    }
    
    func gamma_function(_ x:[Int]) -> [Int] {
        x.map {factorial($0 - 1)}
    }

}
