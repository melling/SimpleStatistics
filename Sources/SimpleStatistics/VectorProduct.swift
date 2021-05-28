//
//  VectorProduct.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation

public extension SimpleStatistics {

    /**
     Multiply each ith element
     (1,2,3) * (4,5,6) = (4,10,18)
     - parameter v: First vector
     - parameter w: Second vector
     - precondition: Vectors must be of the same length
     - returns: The mathematical dot product
     
     */
    func vector_product(_ v:[Double], _ w:[Double]) -> [Double] {
        precondition(v.count == w.count, "vectors must be the same length")

        var vec:[Double] = []
        for (x, y) in zip(v, w) {
            vec.append(x * y)
        }
        return vec
    }
}

