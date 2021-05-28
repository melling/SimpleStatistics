//
//  tTest.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

public extension SimpleStatistics {

    /**
     Student t Test
     - parameter p: A probability
     */
    func tTest(sample:[Double], x:Double) -> Double {
        let mean_sample = mean(sample)
        
        // Square root the length of the sample
        let rootN = pow(Double(sample.count), 0.5)
        
        // get standard deviation of sample
        let sample_sd = standardDeviation(sample)
        
        // Compute the known value against the sample,
        // returning the t value
        let t_statistic = ((mean_sample - x) / sample_sd) * rootN
        return t_statistic
    }
    

}

