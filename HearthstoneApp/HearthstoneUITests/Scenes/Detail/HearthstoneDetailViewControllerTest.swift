import Foundation
import SnapshotTesting
import XCTest

@testable import HearthstoneApp

final class HearthstoneDetailsViewControllerTest: XCTestCase {
    
    func test_WhenHearthstoneDetailsScreenStarts_ThenSuccess_ShouldDisplayCorrectLayout() {
        let items = [
            "Item1":"Description1",
            "Item2":"Description2",
            "Item3":"Description3",
            "Item4":"Description4"
        ]
        let sut = HearthstoneDetailsViewController(items: items)
        assertSnapshot(matching: sut, as: .image)
    }
}
