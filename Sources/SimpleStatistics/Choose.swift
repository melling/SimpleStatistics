//
//  Choose.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

public extension SimpleStatistics {

    /**
     - parameter n: total number of objects
     - parameter k: number of elements in subset
     - returns: binomial coefficient.  Number of combinations from n choose k
     */
    func choose(_ n:Int, _ k:Int) -> Int {
        let numerator = factorial(n)
        let denomerator = factorial(k) * factorial(n - k)
        
        return (numerator / denomerator)
    }
}

