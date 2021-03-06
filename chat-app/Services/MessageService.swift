//
//  MessageService.swift
//  chat-app
//
//  Created by Justin  Doty on 11/5/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
       
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.error == nil {
                guard let data = response.data else { return }
                print("Response from channel request", response)
                do {
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                } catch let error {
                    debugPrint(error as Any)
                }
                
                print(self.channels)
//                if let json = JSON(data: data).array {
//                    for item in json {
//                        let name = item["name"].stringValue
//                        let channelDescription = item["description"].stringValue
//                        let id = item["_id"].stringValue
//                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, Id: id)
//                        self.channels.append(channel)
//
//                    }
//                    completion(true)
//                }
                
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
           
        }
        
    }
    
    
    
}
