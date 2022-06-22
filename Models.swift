//
//  Models.swift
//  Tchat
//
//  Created by Cindy Bajoni on 25/05/2022.
//

import Foundation


struct User: Identifiable {
    var id = UUID()
    var name: String
    var avatar: String
    var isCurrentUser: Bool = false
}

struct MonProfil {
    var myName: String
    var avatar: String
}


struct Message: Identifiable {
    let id = UUID()
    var user: User
    var message: String
    var postDate: String
}

