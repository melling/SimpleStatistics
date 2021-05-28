//
//  Min.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

public extension SimpleStatistics {

    func min<T: Comparable>(_ xs: [T]) -> T? {
        guard xs.count > 0 else {return nil}
        var min0 = xs.first! // count >=1
        
        if xs.count == 1 {// unnecessary check
            return min0
        }
        
        for x in xs {
            if x < min0 {
                min0 = x
            }
        }
        return min0
    }
}

