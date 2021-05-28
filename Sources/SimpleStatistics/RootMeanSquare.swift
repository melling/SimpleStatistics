//
//  RootMeanSquare.swift
//  
//
//  Created by Michael Mellinger on 5/27/21.
//


public extension SimpleStatistics {

    /**
     The root mean square.
     Square each number then add each result.  Take the nth root.
     For a two number list, take the square root, for three number list take the third root, etc.
     
     - parameter xs: List of numbers
     - returns: The rms value
     [Python](https://simplestatistics.readthedocs.io/en/latest/_modules/simplestatistics/statistics/root_mean_square.html#root_mean_square)
     ~~~
     root_mean_square([-1, 1, -1, 1])  // 1
     root_mean_square(Array(1...10)) // 1 through 10 => 6.205
     root_mean_square([9, 4]) //6.96419413859206 Python takes tuple!!
     ~~~
     */
    
    func rootMeanSquare(_ xs:[Int]) -> Double {
        
        let sumOfSquares = xs.map {($0 * $0)}.reduce(.zero, +)
        let sum = Double(sumOfSquares) / Double(xs.count)
        //let _sqrt = sqrt(sum)
        let _sqrt = sum.squareRoot()
        return _sqrt
    }
}

