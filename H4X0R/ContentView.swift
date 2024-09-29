//
//  ContentView.swift
//  H4X0R
//
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                Text(post.title)
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}


/*let posts = [Post(id:"1", title:"Hello"),
             Post(id:"2", title:"Bonjour"),
             Post(id:"3", title:"Hola")
]*/
