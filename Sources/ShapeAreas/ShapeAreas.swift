// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
// FRAMEWORK WITH INVOLMENT OF UIKIT
import UIKit
protocol TraingleAreaProtocol {
    func calculateArea() -> Double
}

class TraingleArea: TraingleAreaProtocol {
    var height: Int
    var width: Int
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
    func calculateArea() -> Double {
        return Double(0.5) * Double(height) * Double(width)
    }
    
}

class SquareArea: TraingleAreaProtocol {
    var side: Int
    init(side: Int) {
        self.side = side
    }
    func calculateArea() -> Double {
        return Double(side * side)
    }
    
}

public class ShapeAreaCalculator {

    public static func calculateShapeAreas() -> (String, Double) {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return ("Triangle",TraingleArea(height: 12, width: 12).calculateArea())
        } else {
            return ("Square",SquareArea(side: 12).calculateArea())
        }
    }
}

// FRAMEWORK WITH INVOLMENT OF UIKIT

//protocol TraingleAreaProtocol {
//    func calculateArea() -> Double
//}
//
//class TraingleArea: TraingleAreaProtocol {
//    var height: Int
//    var width: Int
//    init(height: Int, width: Int) {
//        self.height = height
//        self.width = width
//    }
//    func calculateArea() -> Double {
//        return Double(0.5) * Double(height) * Double(width)
//    }
//    
//}
//
//class SquareArea: TraingleAreaProtocol {
//    var side: Int
//    init(side: Int) {
//        self.side = side
//    }
//    func calculateArea() -> Double {
//        return Double(side * side)
//    }
//}
