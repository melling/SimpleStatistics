//
//  PoissonDistribution.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

import Darwin // pow

public extension SimpleStatistics {

    /**
     Poisson Distribution
     - parameter p: A probability
     */
    func poisson(lambda:Double, k:Int) -> Double {
        (pow(M_E, -lambda) * pow(lambda, Double(k))) / Double(factorial(k))
    }
    
    func poisson(lambda:Double, k:[Int]) -> [Double] {
        k.map {poisson(lambda: lambda, k: $0)}
    }

}

