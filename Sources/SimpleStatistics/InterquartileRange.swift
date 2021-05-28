//
//  InterquartileRange.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {

    /**
     interquartile range
     
     ~~~
     interquartileRange([1, 2, 3, 4]) // 2
     interquartileRange([1, 3, 5, 7]) // 4
     ~~~
     */
    func interquartileRange(_ xs:[Double]) -> Double {
        let x = xs.sorted()
        
        let q1 = quantile(x, p: 0.25)
        let q3 = quantile(x, p: 0.75)
        
        return q3 - q1
        
    }
}
