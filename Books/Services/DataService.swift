//
//  DataService.swift
//  Books
//
//  Created by Uday Sidhu on 24/01/23.
//

import Foundation

class DataService{
     static func getLocalData() -> [Book]{
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else {
            return [Book]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url)
            
            let decoder =  JSONDecoder()
            
            do{
                let bookData = try decoder.decode([Book].self, from: data)
                return bookData
            }
            catch{
                print("error parsing data")
            }
        }
        
        catch{
            print("error fetching data")
        }
        
        
        return [Book]()
    }
    
    
}
