//
//  rSquared.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation


public extension SimpleStatistics {

    /**
     
     - precondition: Must contain at least 2 values
     - returns: Double
     
     https://github.com/simple-statistics/simple-statistics/blob/master/src/r_squared.js
 */
    func rSquared(_ xs:[Double]) -> Double {
        precondition(xs.count >= 2, "Must be of length >= 2")
        
        return 0
    }
    

}

