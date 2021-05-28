//
//  LinearRegression.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation // pow

public extension SimpleStatistics {
    /*
     https://www.mathsisfun.com/data/standard-deviation-formulas.html
     1. Work out the Mean (the simple average of the numbers)
     2. Then for each number: subtract the Mean and square the result
     3. Then work out the mean of those squared differences.
     4. Take the square root of that and we are done!
     
     */
    
    /**
     
     
     - returns: (m,b) slope and y intercept
     Pearson Coefficient
     
     - parameter xs: vector
     - parameter ys: vector
     
     ~~~
     
     ~~~
     */
    func linearRegression(_ xs:[Double], _ ys:[Double]) -> (Double,Double) {
        let mean_x = mean(xs)
        let mean_y = mean(ys)
        let mean_xy = mean(vector_product(xs, ys))
        
        let x2 = xs.map { pow($0, 2) }
        let mean_x2 = mean(x2)
        
        // calculate slope
        let numerator = (mean_x * mean_y) - mean_xy
        let denomerator = pow(mean_x, 2) - mean_x2
        
        let m = numerator / denomerator // slope
        
        // calculate y intercept
        let b = mean_y - (m * mean_x)
        
        return (m, b)
    }

}
