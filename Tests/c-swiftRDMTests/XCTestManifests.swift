import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(c_swiftRDMTests.allTests),
    ]
}
#endif
