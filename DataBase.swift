//
//  DataBase.swift
//  Tchat
//
//  Created by Cindy Bajoni on 25/05/2022.
//

import Foundation

var actualUser = User(name: "Cindoushka", avatar: "cindie", isCurrentUser: true)

var user1 = User(name: "Richard", avatar: "richard", isCurrentUser: false)

var user2 = User(name: "Clara", avatar: "clara", isCurrentUser: false)

var user3 = User(name: "Alicia", avatar: "alicia", isCurrentUser: false)

var user4 = User(name: "Camou", avatar: "cam", isCurrentUser: false)

var user5 = User(name: "Coco", avatar: "coco", isCurrentUser: false)

var user6 = actualUser

var allUsers = [user1, user2, user3, user4, user5, user6]
              

var richardMessages : [Message] = [Message(user: user1, message: "Coucou Bae ça va?", postDate: "25/05/2022"), Message(user: actualUser, message: "Ca va et toi Bae? Bien dormi?", postDate: "25/05/2022"), Message(user: user1, message: "Ouiii très bien et toi?", postDate: "25/05/2022")]

var claraMessages : [Message] = [Message(user: user2, message: "Coucou ma poule ça va?", postDate: "23/05/2022")]

var aliciaMessages : [Message] = [Message(user: user3, message: "Hello! Ca va ?", postDate: "24/05/2022"), Message(user: actualUser, message: "Oui et toi depuis le temps?", postDate: "24/05/2022")]

var allMessages = [user1.id: richardMessages, user2.id: claraMessages, user3.id: aliciaMessages]
