//
//  LinearRegressionLine.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {

    /*
     
     """
     Function created and returned by linear_regression_line().
     """
     
     #
     */
    func lineFunction(_ x:Double, m:Double, b:Double) {
        m * x + b
    }
    
    func lineFunction( m:Double, b:Double, x:[Double] ) -> [Double] {
        var y_values:[Double] = []
        
        for ii in x {
            let y = m * ii + b
            y_values.append(y)
        }
        return y_values
    }
    
    func linearRegressionLine(mb:(Double, Double), x:[Double]) -> [Double] {
        lineFunction(m: mb.0, b: mb.1, x: x)
    }
    
    func linearRegressionLine(mb:(Double, Double), x:Double) -> Double {
        let m = mb.0
        let b = mb.1
        return m * x + b
    }

}

