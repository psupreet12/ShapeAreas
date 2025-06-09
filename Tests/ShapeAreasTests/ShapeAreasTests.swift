import XCTest
@testable import ShapeAreas

final class ShapeAreasTests: XCTestCase {
    func testExample() throws {
        var area = TraingleArea(height: 1, width: 1)
        XCTAssertEqual(0.5, area)
    }
}
