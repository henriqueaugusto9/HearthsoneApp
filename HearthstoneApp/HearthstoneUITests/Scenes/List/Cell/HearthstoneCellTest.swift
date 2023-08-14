import SnapshotTesting
import XCTest

@testable import HearthstoneApp

final class HearthstoneCellTest: XCTestCase {
    func test_WhenCellStarts_ThenSuccess_ShouldDisplayCorrectLayout() {
        let config = Config(imageURL: "", name: "Player Name", playerClass: "PlayerClass")
        
        let sut = HearthstoneCell()
        sut.config(config: config)
        sut.translatesAutoresizingMaskIntoConstraints = true
        sut.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 80)
        
        assertSnapshot(matching: sut, as: .image)
    }
    
    private struct Config: HearthstoneCellProtocol {
        var imageURL: String
        var name: String
        var playerClass: String
    }
}
