//
//  HarmonicMean.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {

    /**
     Mathematical harmonic mean
     - parameter xs: List of numbers
     - returns: Harmonic mean
     
     ~~~
     harmonicMean([1, 2, 4]) // 1.7142857142857142
     ~~~
     */
    func harmonicMean(_ xs:[Double]) -> Double {
        let reciprocals = xs.map {1.0 / $0}
        
        let avg = mean(reciprocals)
        return 1/avg
    }
}
