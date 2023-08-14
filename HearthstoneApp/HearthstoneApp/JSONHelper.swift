import Foundation

public class JSONHelper {
    
    static public func getDataFrom(json file: String) -> Data? {
        let source = URL(fileURLWithPath: #file)
        let directory = source.deletingLastPathComponent()
        let url = directory.appendingPathComponent("\(file).json")

        do {
            let data = try Data(contentsOf: url, options: .mappedIfSafe)
            return data
        } catch let error {
            print(error)
        }
        
        return nil
    }

    static public func getObjectFrom<T: Decodable>(json file: String, type: T.Type) -> T? {
        guard let jsonData = getDataFrom(json: file) else {
            print("\(file) not found")
            return nil
        }
        
        do {
            let objDecoded = try JSONDecoder().decode(T.self, from: jsonData)
            return objDecoded
        } catch let error {
            print(error)
        }
        
        return nil
    }

    static public func getObjectFrom<T: Decodable>(json: String) -> T? {
        guard let jsonData = json.data(using: .utf8) else { return nil }
        if let objDecoded = try? JSONDecoder().decode(T.self, from: jsonData) {
            return objDecoded
        }
        return nil
    }
}
