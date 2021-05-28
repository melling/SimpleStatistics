//
//  Covariance.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {
    /**
     
     */
    func covariance(_ xs:[Double], _ ys:[Double]) -> Double {
        guard xs.count == ys.count && xs.count > 1 else {return 0}
        
        let xmean = mean(xs)
        let ymean = mean(ys)
        
        var covsum = 0.0
        let n = xs.count
        
        for ii in 0..<n {
            covsum += (xs[ii] - xmean) * (ys[ii] - ymean)
        }
        
        
        let bessels_correction = Double(n - 1)
        
        return covsum / bessels_correction
        
    }

}

