import Foundation

protocol HearthstoneInteractorProtocol {
    func getItems()
}

final class HearthstoneInteractor: HearthstoneInteractorProtocol {
    private let presenter: HearthstonePresenterProtocol
    
    init(presenter: HearthstonePresenterProtocol) {
        self.presenter = presenter
    }
    
    func getItems() {
        let apiClient = ApiClient(urlSession: URLSession.shared)
        let request = ListRequest()
        apiClient.fetchData(request: request) { [presenter] (result: Result<[HearthstoneElement], Error>) in
            switch result {
            case .success(let response):
                let items = response.filter { $0.img != nil }.map { item in
                    AshesOfOutlandData.map(from: item)
                }
                presenter.setupItems(items: items)
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    struct ListRequest: ApiRequest {
        var urlString: String = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/sets/Ashes%20of%20Outland"
        var method: ApiMethod = .get
        var headers: [String : Any] =  [
            "X-RapidAPI-Key": "d6bce19e18msh68ec4bbf70ce21ep11662bjsn2ea1268234fc",
            "X-RapidAPI-Host": "omgvamp-hearthstone-v1.p.rapidapi.com"
        ]
    }
}
