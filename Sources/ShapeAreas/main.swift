//
//  main.swift
//  ShapeAreas
//
//  Created by Supreet on 09/06/25.
//

import Foundation
func main() {
        let triangle = TraingleArea(height: 5, width: 10)
        let square = SquareArea(side: 4)
        #if DEBUG
        print("###Triangle Area:### \(triangle.calculateArea())")
        print("###Square Area:### \(square.calculateArea())")
        #else
        //Release
        #endif
 }


main()
