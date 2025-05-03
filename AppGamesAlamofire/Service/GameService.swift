//
//  GameService.swift
//  AppGames
//
//  Created by Rafael Gonzalez on 01/05/25.
//

import Alamofire

class GameService {
    static let shared = GameService()
    let keyloder = KeyLoader.shared
    private var games: [Game] = []
    private init() {}

    func getGames() -> [Game] {
        return games
    }

    func countGames() -> Int {
        return games.count
    }

    func fetchGames(completion: @escaping (Result<[Game], APIError>) -> Void) {
        let url = Endpoint.getGames(keyloder.getQueryString()).url
        print(keyloder.getQueryString())


        AF.request(url, method: .get)
            //        { request in
            //            request.timeoutInterval = 10
            //        }
            .validate().responseDecodable(of: APIResponse.self) { response in

                //                print(response.debugDescription)

                switch response.result {
                case .success(let apiResponse):
                    self.games = apiResponse.results
                    completion(.success(self.games))
                case .failure(let error):
                    let apiError = ErrorParser.parse(error)
                    completion(.failure(apiError))
                    print(apiError.localizedDescription)
                }
            }
    }
}
