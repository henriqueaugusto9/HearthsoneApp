import Foundation

@testable import HearthstoneApp

enum HearthstoneListTestFactory {
    static func build(spy: HearthstoneViewControllerProtocol) -> HearthstoneInteractor {
        let presenter = HearthstonePresenter(view: spy)
        let interactor = HearthstoneInteractor(presenter: presenter,
                                               apiClient: ApiClientStub(isSuccess: true),
                                               request: HeartstoneListRequest())
        return interactor
    }
}
