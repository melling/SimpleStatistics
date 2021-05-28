//
//  Sum.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation

public extension SimpleStatistics {
    /*
     Should implement this algorithm: https://en.wikipedia.org/wiki/Kahan_summation_algorithm
     
     */
    
    class func sum<T:Numeric>(_ xs: [T]) -> T {
        xs.reduce(.zero, +)
    }
    
}
