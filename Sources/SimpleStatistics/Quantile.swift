//
//  Quantile.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {
    
    /*
     Assumes value is sorted
     */
    private func get_q_value(data:[Double], p:Double) -> Double {
        
        /*
         Helper function to be used for quantile().
         Given data and a p value, returns the value from data below which you would find (p*100)% of the values.
         */
        let q = Int((Double(data.count) * p).rounded(.up))
        
        for (index, _) in data.enumerated() {
            if (index + 1) >= q {
                return data[index]
            }
            
            
        }
        return 0
    }
    
    
    func quantileSorted(_ xs:[Double], p:Double) -> Double {
        get_q_value(data: xs, p: p)
    }
    
    func quantileSorted(_ xs:[Double], p:[Double]) -> [Double] {
        p.map {get_q_value(data: xs, p: $0) }
    }
    /**
     quantile
     
     ~~~
     quantile([3, 6, 7, 8, 8, 9, 10, 13, 15, 16, 20])
     ~~~
     */
    func quantile(_ xs:[Double], p:[Double]=[0, 0.25, 0.5, 0.75, 1]) -> [Double] {
        let sorted = xs.sorted()
        return p.map {get_q_value(data: sorted, p: $0) } // FIXME
    }
    
    
    /**
     quantile
     
     - parameter xs: the data
     - parameter p: percentile
     - returns: The largest value...
     
     ~~~
     quantile([3, 6, 7, 8, 8, 9, 10, 13, 15, 16, 20], p: 0.25)
     ~~~
     */
    func quantile(_ xs:[Double], p:Double) -> Double {
        let sorted = xs.sorted()
        return get_q_value(data: sorted, p: p)
    }
}
