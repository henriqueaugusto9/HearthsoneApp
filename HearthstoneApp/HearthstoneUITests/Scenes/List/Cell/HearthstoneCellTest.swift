import SnapshotTesting
import XCTest

@testable import HearthstoneApp

final class HearthstoneCellTest: XCTestCase {
    func test_WhenCellStarts_ThenSuccess_ShouldDisplayCorrectLayout() {
        guard let image = UIImage(named: "default-icon") else { return }
        let config = Config(image: image, name: "Player Name", playerClass: "PlayerClass")
        
        let sut = HearthstoneCell()
        sut.config(config: config)
        sut.translatesAutoresizingMaskIntoConstraints = true
        sut.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 80)
        
        assertSnapshot(matching: sut, as: .image)
    }
    
    private struct Config: HearthstoneCellProtocol {
        var image: UIImage
        var name: String
        var playerClass: String
    }
}
