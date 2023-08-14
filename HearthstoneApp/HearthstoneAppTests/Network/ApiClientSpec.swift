import Foundation
import XCTest

@testable import HearthstoneApp

final class ApiClientSpec: XCTestCase {
    func teste_WhenMakeARequest_ThenSuccess_ShouldHaveNilErrorAndCorrectRequestParams() throws {
        let request = ApiTestRequest(urlString: "https://api-teste-petz.com.br",
                                     method: .get,
                                     headers: ["header1": "headervalue1",
                                               "header2": "headervalue2",
                                               "header3": "headervalue3"])
        let stub = ApiClientStub(isSuccess: true)
        stub.fetchData(request: request) { (result: Result<[HearthstoneElement], Error>) in }
        
        let sut = try XCTUnwrap(stub.spyRequest)
        
        XCTAssertEqual(sut.urlString, "https://api-teste-petz.com.br")
        XCTAssertEqual(sut.headers.count, 3)
        XCTAssertEqual(sut.method.rawValue, "GET")
    }
}

private struct ApiTestRequest: ApiRequest {
    var urlString: String
    var method: HearthstoneApp.ApiMethod
    var headers: [String : Any]
}
