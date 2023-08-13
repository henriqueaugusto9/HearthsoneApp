import Foundation

protocol HearthstoneDetailsInteractorProtocol {
    
}

final class HearthstoneDetailsInteractor: HearthstoneDetailsInteractorProtocol {
    
    private let presenter: HearthstoneDetailsPresenterProtocol
    
    init(presenter: HearthstoneDetailsPresenterProtocol) {
        self.presenter = presenter
    }
}


extension HearthstoneDetailsInteractor {
    
}
