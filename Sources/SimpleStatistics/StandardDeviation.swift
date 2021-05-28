//
//  StandardDeviation.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation

public extension SimpleStatistics {

    /**
     Standard deviation
     
     - parameter xs: List of numbers
     - parameter isSample: Adjust for a simple random sample; n-1
     - returns: variance
     
     ~~~
     standardDeviation([1, 2, 3]) // 1.0
     standardDeviation([1, 2, 3], isSample: false) // 0.816496580927726
     standardDeviation([1, 2, 3, 4]) // 1.2909944487358056
     standardDeviation([-1, 0, 1, 2, 3, 4]) //1.8708286933869707
     ~~~
     */
    func standardDeviation(_ xs:[Double], isSample:Bool=true) -> Double {
        variance(xs, isSample: isSample).squareRoot()
    }
}
