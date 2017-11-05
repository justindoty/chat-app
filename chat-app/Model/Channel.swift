//
//  Channel.swift
//  chat-app
//
//  Created by Justin  Doty on 11/5/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int?
    
}
