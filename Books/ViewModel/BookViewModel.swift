//
//  BookViewModel.swift
//  Books
//
//  Created by Uday Sidhu on 24/01/23.
//

import Foundation

class BookModel: ObservableObject{
    @Published var books = [Book]()
    init(){
        self.books = DataService.getLocalData()
        
    }
}
