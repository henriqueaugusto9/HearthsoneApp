import Foundation

protocol HearthstoneDetailsPresenterProtocol {
    
}

final class HearthstoneDetailsPresenter: HearthstoneDetailsPresenterProtocol {
    private var view: HearthstoneDetailsViewControllerProtocol
    
    init(view: HearthstoneDetailsViewControllerProtocol) {
        self.view = view
    }
}

extension HearthstoneDetailsPresenter {
    
}
