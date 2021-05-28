//
//  Max.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation


public extension SimpleStatistics {

    func max<T: Comparable>(_ xs: [T]) -> T? {
        guard xs.count > 0 else {return nil}
        var max0 = xs.first! // count >=1
        
        if xs.count == 1 {
            return max0
        }
        
        for x in xs {
            if x > max0 {
                max0 = x
            }
        }
        return max0
    }
}

