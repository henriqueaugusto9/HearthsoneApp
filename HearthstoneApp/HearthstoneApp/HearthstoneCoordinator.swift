import UIKit

protocol HearthstoneCoordinatorProtocol {
    func goToDetails(data: [String: String])
}

final class HearthstoneCoordinator: HearthstoneCoordinatorProtocol {
    private let rootViewController: UIViewController

    init(with rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }

    func goToDetails(data: [String: String]) {
        let details = HearthstoneDetailsViewController(items: data)
        rootViewController.present(details, animated: true)
    }
}
