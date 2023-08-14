import UIKit.UIImage

protocol HearthstonePresenterProtocol {
    func setupItems(items: [AshesOfOutlandData])
}

final class HearthstonePresenter: HearthstonePresenterProtocol {
    private let view: HearthstoneViewControllerProtocol
    
    init(view: HearthstoneViewControllerProtocol) {
        self.view = view
    }
    
    func setupItems(items: [AshesOfOutlandData]) {
        let views = items.map {
            Config(imageURL: $0.img, name: $0.name, playerClass: $0.playerClass)
        }
        
        view.setupItems(cells: views)
    }
}

private struct Config: HearthstoneCellProtocol {
    var imageURL: String
    var name: String
    var playerClass: String
}
