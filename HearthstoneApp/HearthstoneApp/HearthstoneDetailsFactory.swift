import Foundation

enum HearthstoneDetailsFactory {
    static func build() -> HearthstoneDetailsViewController {
        let controller = HearthstoneDetailsViewController()
        let presenter = HearthstoneDetailsPresenter(view: controller)
        let interactor = HearthstoneDetailsInteractor(presenter: presenter)
        
        controller.interactor = interactor
        return controller
    }
}
