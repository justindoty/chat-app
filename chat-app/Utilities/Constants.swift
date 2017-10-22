//
//  Constants.swift
//  chat-app
//
//  Created by Justin  Doty on 10/1/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants

let BASE_URL = "https://northman-chat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//Segues

let TO_LOGIN = "toLogin"

let TO_CREATE_ACCOUNT = "toCreateAccount"

let UNWIND = "unwindToChannel"

// USER DEFAULTS

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


