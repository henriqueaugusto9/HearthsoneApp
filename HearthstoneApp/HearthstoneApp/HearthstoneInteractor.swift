import Foundation

protocol HearthstoneInteractorProtocol {
    func getItems()
    func goToDetails(index: Int)
}

final class HearthstoneInteractor: HearthstoneInteractorProtocol {
    private let presenter: HearthstonePresenterProtocol
    private var items: [AshesOfOutlandData]?
    private var apiClient: ApiClientProtocol
    private var request: ApiRequest
    
    init(presenter: HearthstonePresenterProtocol, apiClient: ApiClientProtocol, request: ApiRequest) {
        self.presenter = presenter
        self.apiClient = apiClient
        self.request = request
    }
    
    func getItems() {
        apiClient.fetchData(request: request) { [presenter] (result: Result<[HearthstoneElement], Error>) in
            switch result {
            case .success(let response):
                let items = response.filter { $0.img != nil }.map { item in
                    AshesOfOutlandData.map(from: item)
                }
                self.items = items
                presenter.setupItems(items: items)
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    func goToDetails(index: Int) {
        guard let item = items?[index] else { return }
        presenter.goToDetails(item: item)
    }
}
