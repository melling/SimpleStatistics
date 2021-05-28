//
//  zScore.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

public extension SimpleStatistics {

    /**
     - precondition: xs.count >= 2
     - returns: Z-score
     
     ~~~
     zScore([-2, -1, 0, 1, 2]) // [1.2649110640673518, 0.6324555320336759, 0.0, -0.6324555320336759, -1.2649110640673518]
     zScore([-2, -1, 0, 1, 2], isSample: false) // [1.414213562373095, 0.7071067811865475, 0.0, -0.7071067811865475, -1.414213562373095]
     zScore([1, 2]) // [0.7071067811865475, -0.7071067811865475]
     zScore([1, 2], isSample: false) // [1.0, -1.0]
     ~~~
     */
    func zScore(_ xs:[Double], isSample:Bool=true) -> [Double] {
        precondition(xs.count >= 2, "Must be of length >= 2")
        guard xs.count >= 2 else {return []}
        
        let mean_of_data = mean(xs)
        let sd_of_data = standardDeviation(xs, isSample: isSample)
        
        let scores = xs.map { (mean_of_data - $0) / sd_of_data  }
        return scores
    }
}
