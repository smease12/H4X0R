//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Serena  on 9/22/24.
//

import Foundation

class NetworkManager{
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                }
                
            }
        }
    }
}
