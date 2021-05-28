//
//  BernoulliDistribution.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation

public extension SimpleStatistics {

    /**
     Bernoulli Distribution, which is Binomial with n=1
     - parameter p: A probability
     */
    func bernoulli(_ p:Double) -> [Double] {
        //if p < 0 or p > 1:
        //raise ValueError('Probability (p) must be between 0 and 1.')
        
        let probabilities = binomial(ks: [0, 1], n: 1, p: p)
        return probabilities
    }
}
