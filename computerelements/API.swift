//
//  API.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 18.04.2021.
//

import Foundation
import Alamofire
import SwiftyJSON

struct CEAPI {
    func getStatusOfAPI(completionHandler: @escaping (String) -> ()) {
        let apiEndpoint: String = "https://api.vapronva.pw/computerlements/check"
        AF.request(apiEndpoint).responseString { response in
            let trueResponse = response.value!
            let json = JSON.init(parseJSON: trueResponse)
            completionHandler(json["results"]["status"].stringValue)
        }
    }
    func getNewsID(IDn: Int, completionHandler: @escaping (JSON) -> ()) {
        let apiEndpoint: String = "https://api.vapronva.pw/computerlements/getNew?idNews=\(IDn)"
        AF.request(apiEndpoint).responseString { response in
            let trueResponse = response.value!
            let json = JSON.init(parseJSON: trueResponse)
            completionHandler(json["results"])
        }
    }
}

struct newsArticle: Hashable {
    var IDn: Int
    var title: String
    var description: String
    var imgURL: URL
    var newsURL: URL?
}


class NewsCEAPI {
    private var hype = CEAPI()
    
    @Published private(set) var news: Array<newsArticle> = Array<newsArticle>()
    var statusAPI: String = ""
    
    func statusInfo() -> String {
        hype.getStatusOfAPI() { result in
            self.statusAPI = result
        }
        print(self.statusAPI)
        return self.statusAPI
    }
    
    func getArticle(byID: Int) -> Array<String> {
        var cumming: Array<String> = Array<String>()
        hype.getNewsID(IDn: byID) { result in
            cumming = [result["title"].stringValue, result["desc"].stringValue, result["imgURL"].stringValue, result["newsURL"].stringValue]
        }
        print(cumming)
        return cumming
    }
}
