import XCTest
@testable import c_swiftRDM

final class c_swiftRDMTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(c_swiftRDM().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
