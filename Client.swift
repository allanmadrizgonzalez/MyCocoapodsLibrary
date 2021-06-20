//
//  Client.swift
//  MyCocoapodsLibrary
//
//  Created by Allan Madriz on 6/20/21.
//

import Foundation
class Client: NetworkGeneric {
    var session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
}
