//
//  Mean.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

public extension SimpleStatistics {

    /**
     The mathematical mean
     - parameter xs: Array of numbers to average
     - returns: average
     
     ~~~
     let mu = mean([1,2,3,4,5,6]) // = 21/6 = 3.5
     ~~~
     */
    func mean(_ xs:[Double]) -> Double {
        let sum:Double = Double(xs.reduce(.zero, +))
        let avg = sum / Double(xs.count)
        return avg
    }
}
