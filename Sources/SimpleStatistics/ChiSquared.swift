//
//  ChiSquared.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//

import Foundation

public extension SimpleStatistics {
    
    /*
     
     https://simplestatistics.readthedocs.io/en/latest/_modules/simplestatistics/statistics/chi_squared_dist_table.html#chi_squared_dist_table
     
     
     From `Wikipedia <https://en.wikipedia.org/wiki/Chi-squared_distribution>`_.
     
     The p-value is the probability of observing a test statistic at least as
     extreme in a chi-squared distribution. Accordingly, since the cumulative
     distribution function (CDF) for the appropriate degrees of freedom (df)
     gives the probability of having obtained a value less extreme than this
     point, subtracting the CDF value from 1 gives the p-value. The table below
     gives a number of p-values matching to :math:`\\chi^2` for the first 10
     degrees of freedom.
     
     The ``chi_squared_dist_table`` function can either return the full table of
     :math:`\\chi^2` vs. *p* values, or it can perform a lookup for a certain value
     if given *k* (degrees of freedom: df) or *k* and *p* values.
     
     *k* has to be one of the following values:
     
     1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
     23, 24, 25, 26, 27, 28, 29, 30, 40, 50, 60, 70, 80, 90, 100
     
     *p* has to be one of the following values:
     
     .005, .01, .025, .05, .1, .5, .9, .95, .975, .99, .995
     
     Args:
     k: (optional) int of *k* representing degrees of freedom.
     p: (optiona, but *k* is required) float of *p* representing probability.
     
     Returns:
     Entire table as dict where the key is degree of freedom and value is another dict of keys
     representing *p* and values representing test statistic.
     If only *k* is provided, the function returns a dict of *p*: test statistic pairs.
     If both *k* and *p* are provided, the function will return the specific test statistic.
     
     Examples:
     >>> chi_squared_dist_table(5, .01)
     15.09
     >>> x = chi_squared_dist_table()
     >>> sorted(x.keys()) # doctest: +ELLIPSIS
     [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ..., 100]
     the
     
     */
    
    
    func chiSquaredDistributionTable() -> [Int:[Double:Double]]  {
        chi_table
    }
    
    func chiSquaredDistributionTable(k:Int, p:Double=0) -> [Double:Double] {
        
        
        let krange:[Int] =  Array(1..<30) + (30...110).filter{$0 % 10 == 0}
        let prange = [0.005, 0.01, 0.025, 0.05, 0.1, 0.5, 0.9, 0.95, 0.975, 0.99, 0.995]
        
        
        guard let v = chi_table[k] else { return [:] }
        return v
    }
    
    func chiSquared(k:Int) -> [Double:Double] {
        guard let ktbl = chi_table[k] else { return [:] }
        
        return ktbl
    }
    
    /**
     Chi-Squared Distribution
     - parameter p: A probability
     */
    func chiSquared(k:Int, p:Double) -> Double {
        let ktbl = chi_table[k]
        guard let v = chi_table[k]?[p] else { return -99 }
        
        return v
    }
    
    
}
