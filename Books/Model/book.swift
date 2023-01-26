//
//  book.swift
//  Books
//
//  Created by Uday Sidhu on 24/01/23.
//

import Foundation
struct Book: Decodable, Identifiable{
    var id: Int
    var title: String
    var author: String
    var content: [String]
    var isFavourite: Bool
    var rating: Int
    var currentPage: Int
}
