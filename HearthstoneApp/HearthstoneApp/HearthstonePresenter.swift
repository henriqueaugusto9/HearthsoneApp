import UIKit.UIImage

protocol HearthstonePresenterProtocol {
    func setupItems()
}

final class HearthstonePresenter: HearthstonePresenterProtocol {
    private let view: HearthstoneViewControllerProtocol
    
    init(view: HearthstoneViewControllerProtocol) {
        self.view = view
    }
    
    func setupItems() {
        guard let image = UIImage(named: "default-icon") else { return }
        
        let config0 = Config(image: image, name: "Player Name 0", playerClass: "PlayerClass 0")
        let config1 = Config(image: image, name: "Player Name 1", playerClass: "PlayerClass 1")
        let config2 = Config(image: image, name: "Player Name 2", playerClass: "PlayerClass 2")
        let config3 = Config(image: image, name: "Player Name 3", playerClass: "PlayerClass 3")
        let config4 = Config(image: image, name: "Player Name 4", playerClass: "PlayerClass 4")
        let config5 = Config(image: image, name: "Player Name 5", playerClass: "PlayerClass 5")
        let config6 = Config(image: image, name: "Player Name 6", playerClass: "PlayerClass 6")
        
        let views: [HearthstoneCellProtocol] = [ config0, config1, config2, config3, config4, config5, config6]
        view.setupItems(cells: views)
    }
}

private struct Config: HearthstoneCellProtocol {
    var image: UIImage    
    var name: String
    var playerClass: String
}
