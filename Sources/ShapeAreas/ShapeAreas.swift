// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit
protocol AreaFinder {
    func calculateArea()
}

class TraingleArea {
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
class SquareArea {
    var side: Int
    init(side: Int) {
        self.side = side
    }
    func calculateArea() -> Double {
        return Double(side * side)
    }
    
}
public class ShapeAreaCalculator {

    // Function to calculate the area of a square (iPhone flavour)
    @available(iOS, deprecated: 14.0, message: "use calculateShapeAreas")
    public static func calculateArea() -> (String, Double) {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return ("Triangle",TraingleArea(height: 12, width: 12).calculateArea())
        } else {
            return ("Square",SquareArea(side: 12).calculateArea())
        }
    }
    public static func calculateShapeAreas() -> (String, Double) {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return ("Triangle",TraingleArea(height: 12, width: 12).calculateArea())
        } else {
            return ("Square",SquareArea(side: 12).calculateArea())
        }
    }
}

