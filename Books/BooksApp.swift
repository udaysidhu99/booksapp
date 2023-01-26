//
//  BooksApp.swift
//  Books
//
//  Created by Uday Sidhu on 24/01/23.
//

import SwiftUI

@main
struct BooksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookModel())
        }
    }
        
}
