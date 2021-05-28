//
//  NormalDistribution.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow


public extension SimpleStatistics {

    /*
     
     */
    func norm_single_calculation(x:Double, mean:Double, standard_deviation:Double) -> Double {
        
        /*
         Helper function that calculates normal density function for a particular
         x with a given mean and stadard deviation.
         */
        
        // before we do a lot of math, let's check if sd is 0
        if standard_deviation == 0 {
            return 0
        }
        
        // component 1
        let comp1 = 1 / (2 * pow(standard_deviation, 2) * Double.pi).squareRoot()
        
        // component 2
        let d = (2 * pow(standard_deviation, 2))
        let n = -1 * pow(x - mean, 2)
        let comp2 = exp(n/d)
        
        // return the product of the two components
        return comp1 * comp2
        
        
    }
    /**
     Normal Distribution
     
     */
    func normal(_ x:Double, mean:Double, standard_deviation:Double) -> Double {
        norm_single_calculation(x: x, mean: mean, standard_deviation: standard_deviation)
    }
    
    func normal(xs:[Double], mean:Double, standard_deviation:Double) -> [Double] {
        
        xs.map {norm_single_calculation(x: $0, mean: mean, standard_deviation: standard_deviation)}
    }
}

