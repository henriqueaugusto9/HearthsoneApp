import Foundation

enum HearthstoneListFactory {
    static func build() -> HearthstoneViewController {
        let view = HearthstoneViewController()
        let presenter  = HearthstonePresenter(view: view)
        let interactor = HearthstoneInteractor(presenter: presenter,
                                               apiClient: ApiClient(urlSession: URLSession.shared),
                                               request: HeartstoneListRequest())
        
        view.interactor = interactor
        return view
    }
}
