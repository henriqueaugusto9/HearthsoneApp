import Foundation

protocol HearthstoneInteractorProtocol {
    func getItems()
}

final class HearthstoneInteractor: HearthstoneInteractorProtocol {
    private let presenter: HearthstonePresenterProtocol
    
    init(presenter: HearthstonePresenterProtocol) {
        self.presenter = presenter
        
        getItems()
    }
    
    func getItems() {
        let apiClient = ApiClient(urlSession: URLSession.shared)
        let request = ListRequest()
        apiClient.fetchData(request: request) { (result: Result<Hearthstone, Error>) in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }

        
        presenter.setupItems()
    }
    
    struct ListRequest: ApiRequest {
        var urlString: String = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards"
        var method: ApiMethod = .get
        var headers: [String : Any] =  [
            "X-RapidAPI-Key": "d6bce19e18msh68ec4bbf70ce21ep11662bjsn2ea1268234fc",
            "X-RapidAPI-Host": "omgvamp-hearthstone-v1.p.rapidapi.com"
        ]
    }
}



//
//        let request = NSMutableURLRequest(url: NSURL(string: )! as URL,
//                                                cachePolicy: .useProtocolCachePolicy,
//                                            timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = headers
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//            if (error != nil) {
//                print(error as Any)
//            } else {
//                let httpResponse = response as? HTTPURLResponse
//                print(httpResponse)
//            }
//        })
//
//        dataTask.resume()
