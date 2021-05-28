//
//  Product.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {

    /**
     Multiply all the values in a list together
     
     https://en.wikipedia.org/wiki/Product_(mathematics)
     
     - parameter xs: A list of values
     – returns: The product of the numbers
     
     func product(_ xs: [Double]) -> Double {
     xs.reduce(1, *)
     }
     */
    func product<T:Numeric>(_ xs: [T]) -> T {
        xs.reduce(1, *)
    }
    
}

