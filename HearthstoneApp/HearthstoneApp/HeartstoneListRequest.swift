import Foundation

struct HeartstoneListRequest: ApiRequest {
    var urlString: String = "https://omgvamp-hearthstone-v1.p.rapidapi.com/cards/sets/Ashes%20of%20Outland"
    var method: ApiMethod = .get
    var headers: [String : Any] =  [
        "X-RapidAPI-Key": "d6bce19e18msh68ec4bbf70ce21ep11662bjsn2ea1268234fc",
        "X-RapidAPI-Host": "omgvamp-hearthstone-v1.p.rapidapi.com"
    ]
}
