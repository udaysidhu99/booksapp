//
//  CardView.swift
//  Books
//
//  Created by Uday Sidhu on 25/01/23.
//

import SwiftUI

struct CardView: View {
    var book:Book
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Rectangle().foregroundColor(.white)
                    VStack(alignment: .leading){
                        HStack {
                            Text(book.title)
                                .font(.largeTitle)
                            .fontWeight(.bold)
                            Spacer()
                            if book.isFavourite == true{
                                Image(systemName: "star.fill").resizable().scaledToFit().frame(width: 30,height: 30).padding().foregroundColor(.yellow)
                            }
                        }
                        Text(book.author)
                        Image("cover" + String(book.id)).resizable().padding(.top, 40.0).scaledToFit()
                    }
                    .padding(.horizontal)
                   
                
                
                
                
            }.cornerRadius(20)
                .shadow (color: Color(.sRGB, red: 0, green: 0, blue: 0,opacity: 0.5), radius: 10, x: -5, y: 5)
            
        }
            
        }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        CardView(book: model.books[0])
            
    }
}
