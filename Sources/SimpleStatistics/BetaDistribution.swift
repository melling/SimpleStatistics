//
//  BetaDistribution.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow

public extension SimpleStatistics {

    /*
     
     
     */
    
    func calculate_beta_pdf(_ x:Double, alpha:Double, beta:Double) -> Double {
        
        let numerator = (pow(x, alpha  - 1) * pow(1 - x, beta - 1))
        
        let denominator = (gamma_function(alpha) *
            gamma_function(beta )) / gamma_function(alpha + beta)
        
        return numerator / denominator
    }
    
    /**
     Beta Distribution. A discreet distribution
     - parameter p: A probability
     */
    func beta(_ x:Double, alpha:Double, beta:Double) -> Double {
        calculate_beta_pdf(x, alpha: alpha, beta: beta)
    }
    
    func beta(_ x:[Double], alpha:Double, beta:Double) -> [Double] {
        x.map { calculate_beta_pdf($0, alpha: alpha, beta: beta)}
    }
}
