import Foundation

@testable import HearthstoneApp

class ApiClientStub: ApiClientProtocol {
    var spyRequest: ApiRequest?
    var isSuccess: Bool
    
    init(isSuccess: Bool) {
        self.isSuccess = isSuccess
    }
    
    func fetchData<T>(request: HearthstoneApp.ApiRequest, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
        self.spyRequest = request
        
        if isSuccess, let response = JSONHelper.getObjectFrom(json: "hearthstone-list", type: [HearthstoneElement].self) as? T {
            completion(.success(response))
        } else {
            completion(.failure(ApiError.parse))
        }
    }
}
