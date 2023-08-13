import UIKit

protocol HearthstoneCoordinatorProtocol {
    func goToDetails()
}

final class HearthstoneCoordinator: HearthstoneCoordinatorProtocol {
    private let rootViewController: UIViewController

    init(with rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }

    func goToDetails() {
        let details = HearthstoneDetailsFactory.build()
        rootViewController.present(details, animated: true)
    }
}
