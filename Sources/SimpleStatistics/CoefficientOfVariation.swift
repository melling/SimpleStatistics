//
//  CoefficientOfVariation.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation



public extension SimpleStatistics {
    
    
    /**
     Coefficient of Variation -
     
     The `coefficient of variation` is the ratio of the standard deviation to the mean.
     
     [Coefficient of Variation](https://en.wikipedia.org/wiki/Coefficient_of_variation)
     
     - parameter xs: A list of numerical objects.
     - parameter sample: A boolean value. If True, calculates coefficient of variation for sample. If False, calculates coefficient of variation for population.
     
     - returns: A Double.
     
     ~~~
     coefficientOfVariation([1, 2, 3]) // 0.5
     coefficientOfVariation([1, 2, 3], isSample: false) //0.408248290463863
     coefficientOfVariation([1, 2, 3, 4]) // 0.5163977794943222
     coefficientOfVariation([-1, 0, 1, 2, 3, 4]) //1.247219128924647
     ~~~
     
     */
    func coefficientOfVariation(_ xs:[Double], isSample:Bool=true) -> Double {
        standardDeviation(xs, isSample: isSample) / mean(xs)
    }
}
