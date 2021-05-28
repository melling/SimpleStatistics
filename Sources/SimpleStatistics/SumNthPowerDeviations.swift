//
//  SumNthPowerDeviations.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow

public extension SimpleStatistics {

    /*
     
     ~~~
     sumNthPowerDeviations([1, 2, 3], 2) // 2.0
     sumNthPowerDeviations([-1, 0, 2, 4], 3) // 7.875
     ~~~
     */
    func sumNthPowerDeviations(_ xs:[Double], _ n:Double) -> Double {
        let m = mean(xs)
        
        let n_deviations = xs.map {pow($0 - m, n)}
        
        return Self.sum(n_deviations)
        
    }
}
