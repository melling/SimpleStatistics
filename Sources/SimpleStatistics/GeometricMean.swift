//
//  GeometricMean.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow


public extension SimpleStatistics {

    /**
     Mathematical geometric mean
     - parameter xs: Array of numbers
     - returns: Geometric mean
     
     ~~~
     geometricMean([1]) // 1.0
     geometricMean([1, 10]) // 3.1622776601683795
     ~~~
     */
    func geometricMean(_ xs:[Double]) -> Double {
        let product = xs.reduce(1, *)
        let root = 1.0/Double(xs.count)
        let ans = pow(product, root)
        return ans
    }
}
