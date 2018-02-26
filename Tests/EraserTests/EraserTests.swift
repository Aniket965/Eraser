import XCTest
@testable import Eraser

class EraserTests: XCTestCase {
    func returnFunctionTests() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(rErase(), "\u{001B}[1A\u{001B}[2K")
        XCTAssertEqual(rUpdateCLI(msg: "LOL", delay: 0), "\u{001B}[1A\u{001B}[2KLOL")
    }


    static var allTests = [
        ("returnFunctionTests",returnFunctionTests ),
    ]
}
