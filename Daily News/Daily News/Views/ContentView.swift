//
//  ContentView.swift
//  Daily News
//
//  Created by Dev Salvi on 25/12/22.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Daily News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}



//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "jfdghskjgf"),
//    Post(id: "3", title: "hjfghsf")
//]
