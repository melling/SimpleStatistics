//
//  DotProduct.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation

public extension SimpleStatistics {
    /**
     The dot product vectors
     (1,2,3) * (4,5,6) = 4 + 10 + 18 = 32
     
     - parameter v: First vector
     - parameter w: Second vector
     - precondition: Vectors must be of the same length
     - returns: The mathematical dot product
     
     */
    func dot(_ v:[Double], _ w:[Double]) -> Double {
        precondition(v.count == w.count, "vectors must be the same length")

        var total:Double = 0
        for (v_i, w_i) in zip(v, w) {
            total += v_i * w_i
        }
        return total
    }

}

