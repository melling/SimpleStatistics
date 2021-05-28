//
//  Kurtosis.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow


public extension SimpleStatistics {

    /**
     Kurtosis
     - parameter xs: List of numbers
     - returns: kurtosis
     [Python](https://simplestatistics.readthedocs.io/en/latest/_modules/simplestatistics/statistics/kurtosis.html#kurtosis)
     
     >>> kurtosis(2) # no kurtosis for a single number/value
     >>> kurtosis([1, 2, 3]) # this kurtosis calculation requires at least 4 observations
     */
    func kurtosis(_ xs:[Double]) -> Double {
        
        let n = Double(xs.count)
        let mean_x = mean(xs)
        
        let s2 = xs.map{pow(($0 - mean_x), 2)}.reduce(.zero, +)
        let s4 = xs.map{pow(($0 - mean_x), 4)}.reduce(.zero, +)
        let vx = s2 / (n - 1)
        
        let component1 = ((n * (n + 1)) / ((n - 1) * (n - 2) * (n - 3)))
        
        let component2 = (s4 / pow(vx, 2))
        
        let component3 = (pow((n - 1), 2) / ((n - 2) * (n - 3)))
        
        return((component1 * component2) - (3 * component3))
        
    }
}
