//
//  ContentView.swift
//  Lab01
//
//  Created by Ajoy Saha on 9/7/26.
//


import SwiftUI

var siteName: String = "Hello, world!"
print(siteName)
var year: Int = 2026
print("is it \(year) yet?")


//character, string, int, bool, float, double

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
