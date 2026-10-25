//
//  Animation.swift
//  aa
//
//  Created by Ajoy Saha on 10/25/26.
//
import SwiftUI

struct ImplicitDemo: View {
    @State private var big = false

    var body: some View {
        Circle()
            .fill(.orange)
            .frame(width: big ? 200 : 100, height: big ? 200 : 100)
            .animation(.spring, value: big)   // watch `big`
            .onTapGesture { big.toggle() }
    }
}

struct ExplicitDemo: View {
    @State private var big = false

    var body: some View {
        VStack {
            Circle()
                .fill(.orange)
                .frame(width: big ? 200 : 100, height: big ? 200 : 100)

            Button("Grow") {
                withAnimation(.easeInOut(duration: 0.6)) {
                    big.toggle()
                }
            }
            
            Button ("Check"){
                withAnimation(.easeIn( duration: 0.5)){
                    big.toggle();
                }
            }
        }
    }
}

#Preview{
    ExplicitDemo()
}
