//
//  Factorial.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation


public extension SimpleStatistics {
    
    private func obtain_factorial(_ n:Int) -> Int {
        
        var product = 1
        for ii in 0..<n {
            product = product * (ii + 1)
        }
        
        return product
    }
    /**
     - returns: n!
     */
    
    func factorial(_ n:Int) -> Int {
        //
        obtain_factorial(n)
    }
    
    /**
     - returns: n! for each value in the list
     */
    func factorial(_ xs:[Int]) -> [Int] {
        //
        var lst:[Int] = []
        for n in xs {
            lst.append(obtain_factorial(n))
        }
        return lst
    }
}
