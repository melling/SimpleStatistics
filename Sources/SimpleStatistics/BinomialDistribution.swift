//
//  BinomialDistribution.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow


public extension SimpleStatistics {
    /*
     
     */
    
    func binom_single_calculation(k:Int, n:Int, p:Double) -> Double {
        
        /*
         Helper function to be used by binomial() function.
         */
        
        // break the binomial distribution into three components
        // 1. n choose k
        let component_1 = Double(choose(n, k))
        
        // 2. p to the power k
        let component_2 = pow(p, Double(k))
        
        // 3. (1 - p) to the power (n - k)
        let component_3 = pow((1 - p), Double(n - k))
        
        // return the product of the three components
        return component_1 * component_2 * component_3
        
    }
    
    /**
     Binomial Distribution
     
     */
    func binomial(k:Int, n:Int, p:Double) -> Double {
        binom_single_calculation(k: k, n: n, p: p)
    }
    
    func binomial(ks:[Int], n:Int, p:Double) -> [Double] {
        ks.map {binom_single_calculation(k: $0, n: n, p: p)}
    }
}

