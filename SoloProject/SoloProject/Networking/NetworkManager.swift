//
//  NetworkManager.swift
//  SoloProject
//
//  Created by Consultant on 12/15/22.
//

import Foundation



protocol NetworkManagerType {
    
    func fetchModel <W> (request1 : URLRequest? , completion: @escaping (Result <W , NetworkError >) -> Void) where W: Decodable
    
//    func fetchDataRaw (request2: URLRequest? , completion: @escaping (Result <Data , Error >)-> Void )
}

class NetworkManager{
    
    let keyNutritionixCom = "6fc8dabdcd07a0636be624b60ce37ac1"
    let APIid = "8b6dc45a"
    let headers = [
        "X-RapidAPI-Key": "SIGN-UP-FOR-KEY",
        "X-RapidAPI-Host": "burgers-hub.p.rapidapi.com"
    ]
    
    let request = NSMutableURLRequest(url: NSURL(string: "https://burgers-hub.p.rapidapi.com/find-burger/?search=chicken")! as URL,
                                      cachePolicy: .useProtocolCachePolicy,
                                      timeoutInterval: 10.0)
    
    //    request.httpMethod = "GET"
    //    request.allHTTPHeaderFields = headers

    let session = URLSession.shared
    
    
    
}
//extension NetworkManager : NetworkManagerType{
//    func fetchModel<W>(request1: URLRequest?, completion: @escaping (Result<W, NetworkError>) -> Void) where W : Decodable {
//
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//            if (error != nil) {
//                print(URLSession.self)
//                print(error)
//            } else {
//                let httpResponse = response as? HTTPURLResponse
//                print(httpResponse)
//            }
//        })
//
//        dataTask.resume()
//
//    }
//
//
    
//}






enum NetworkError: Error {
    case badURL
    case badData
    case decodeFailure(DecodingError)
    case badStatusCode(Int)
    case serverError(Error)
    case other(Error)
    
    
}

extension NetworkError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .badURL:
            return NSLocalizedString("Invalid request. Malformed URL. Report to Dev Team", comment: "bad url")
        case .badData:
            return NSLocalizedString("Data corrupted. Please Try again later.", comment: "bad data")
        case .decodeFailure:
            return NSLocalizedString("Invalid data. Please notify dev team.", comment: "decode failure")
        case .badStatusCode(let statusCode):
            return NSLocalizedString("Data could not be found or permission is not allowed. Status Code: \(statusCode)", comment: "bad status code")
        case .serverError:
            return NSLocalizedString("Something is wrong with the server. Report to the authorities", comment: "server error")
        case .other:
            return NSLocalizedString("Unknown Error. Quit using the app", comment: "Unknown error")
            
        }
        
    }
    
    
}
