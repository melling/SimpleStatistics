//
//  Correlate.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation

public extension SimpleStatistics {
    /**
     Calculates correlation between two vectors
     - returns: r, Correlation Coefficient [-1...1]
     
     */
    func correlate(_ xs:[Double], _ ys:[Double]) -> Double {
        guard xs.count == ys.count && xs.count > 1 else {return 0}
        
        let x = zScore(xs)
        let y = zScore(ys)
        
        let z_products = vector_product(x, y)
        let z_sum = Self.sum(z_products)
        
        let r = z_sum / Double(xs.count - 1)
        
        return r
    }
    

}
