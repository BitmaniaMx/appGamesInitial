//
//  KeyLoader.swift
//  AppGames
//
//  Created by Rafael Gonzalez on 01/05/25.
//
import Foundation

class KeyLoader {
    static let shared = KeyLoader()
        var apiKey = ""
    
    //    init method load key from file
        private init() {
            if let file = Bundle.main.url(forResource: "api", withExtension: "keys"){
                do{
                    let data = try Data(contentsOf: file)
                    let myKey = try JSONDecoder().decode(Key.self, from: data)
                    apiKey = myKey.apiKey
                }
                catch let error{
                    print("Error: ", error)
                }
            }
        }
    
    func getQueryString() -> String {
        return "?key="+self.apiKey
    }
    func getQueryString(withPage page: Int) -> String {
        return "?key="+self.apiKey+"&page=\(page)"
    }
    
}
