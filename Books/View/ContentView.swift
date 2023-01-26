//
//  ContentView.swift
//  Books
//
//  Created by Uday Sidhu on 24/01/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model:BookModel
    var body: some View {
        VStack {
            Text(model.books[0].title)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
