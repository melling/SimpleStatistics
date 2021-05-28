//
//  Variance.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow

public extension SimpleStatistics {

    /**
     variance
     
     - parameter xs: List of numbers
     - parameter isSample: Boolean true for sample. false for population
     - precondition: Length xs > 1
     - returns: variance
     
     >>> variance([1]) # variance of one value is not defined
     >>> variance([4]) # variance of one value is not defined
     */
    func variance(_ xs:[Double], isSample:Bool=true) -> Double {
        precondition(xs.count > 1, "Must have at least 2 values")
        let m = mean(xs)
        let n = Double(xs.count)
        
        if isSample {
            return xs.map{ pow($0 - m, 2) }.reduce(.zero,+) / (n - 1)
        } else {
            return mean(xs.map{ pow($0 - m, 2) } )
        }
        
    }

}

