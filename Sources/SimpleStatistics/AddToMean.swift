//
//  AddToMean.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

//import Foundation


public extension SimpleStatistics {
    /**
     Add a number to the mean
     - Parameters:
     - current_mean:
     - n: Number values in sample
     - new_value: New value to add to the mean
     - returns: new mean
     
     [Python](https://simplestatistics.readthedocs.io/en/latest/_modules/simplestatistics/statistics/add_to_mean.html#add_to_mean)
     ~~~
     add_to_mean(20, 4, 10) // 18.0
     ~~~
     */
    func addToMean(_ current_mean:Double,_ n:Int, _ new_value:Double) -> Double {
        //
        guard n > 0 else {return -99}
        let n0 = Double(n)
        let  old_sum = current_mean * n0
        
        let new_sum = old_sum + new_value
        
        return new_sum / (n0 + 1)
        
    }
    
    /**
     Add a list of numbers to the mean
     - Parameters:
     - current_mean:
     - n: Number values in sample
     - new_value: List of values to add to the mean
     - returns: new mean
     
     ~~~
     add_to_mean(40, 4, [10, 12]) // 30.33
     add_to_mean(0, 3, [10, -10, 0]) // 0.0
     ~~~
     */
    func addToMean(_ current_mean:Double,_ n:Int, _ new_value:[Double]) -> Double {
        //
        guard n > 0 else {return -99}
        let n0 = Double(n)
        let  old_sum = current_mean * n0
        
        let new_sum = old_sum + Self.sum(new_value)
        
        return new_sum / (n0 + Double(new_value.count))
        
    }
}
