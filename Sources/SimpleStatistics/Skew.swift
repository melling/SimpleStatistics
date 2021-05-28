//
//  Skew.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow

public extension SimpleStatistics {

    /**
     Skew
     - parameter xs: List of numbers
     - returns: The statistical skew
     
     [Python](https://simplestatistics.readthedocs.io/en/latest/_modules/simplestatistics/statistics/skew.html#skew)
     ~~~
     skew([1, 2, 3]) //0.0
     skew([1, 2, 5]) //0.5279896038431618
     skew([20, 30]) // 0.0 - Two values is always 0
     ~~~
     */
    func skew(_ xs:[Double]) -> Double {
        
        let mean_x = mean(xs)
        
        let n = Double(xs.count)
        let m2:Double = xs.map {pow(($0 - mean_x), 2)}.reduce(.zero, +) * (1/n)
        let m3 = xs.map {pow(($0 - mean_x), 3)}.reduce(.zero, +) * (1/n)
        
        let m2_32 = pow(m2, 1.5)
        
        return m3/m2_32
    }
}
