//
//  ContentView.swift
//  Books
//
//  Created by Uday Sidhu on 24/01/23.
//

import SwiftUI

struct BookList: View {
    @EnvironmentObject var model:BookModel
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 30){
                    ForEach(model.books){ i in
                        CardView(book: i).padding(.horizontal)
                        
                    }
                    
                }.padding(.bottom, 30)
                
            }
        }.navigationTitle("hello")
        
    }
}
        
    
struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
            .environmentObject(BookModel())
    }
}
