//
//  Client.swift
//  AppForoLaboratorio
//
//  Created by Allan Madriz on 6/18/21.
//

import Foundation

class Client: NetworkGeneric {
    var session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
}
