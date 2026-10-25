//
//  ContentView.swift
//  aa
//
//  Created by Ajoy Saha on 10/25/26.
//

import SwiftUI

struct ContentView: View {
    @State private var path: [String] = []
    
    var body: some View {
        
        NavigationStack(path: $path){
            VStack(spacing: 10){
                Button("To Detail 1") { path.append("Detail 1") }
                Button("To Detail 2") { path.append("Detail 2") }
                Button("To Detail X") {path.append(contentsOf: ["Details3", "Details4"])}
            }
            .navigationTitle("Home")
            .navigationDestination(for: String.self){
                name in DetailView(name: name, path: $path)
            }
        }
    }
}

struct DetailView: View {
    let name: String
    @Binding var path: [String]
    
    var body: some View {
        VStack(spacing: 10){
            Text(name).font(.title)
            Button("Back one step") {path.removeLast()}
            Button("Back to root") {path.removeAll()}
            
        }
    }
}

#Preview {
    ContentView()
}
