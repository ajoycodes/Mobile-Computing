import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            
            
            // MARK: - Image
            HStack(spacing:10){
                Image(systemName: "globe")
                    .font(.system(size: 25))
                    .foregroundStyle(.black)
                    .symbolEffect(.pulse)
                Image(systemName: "globe")
                    .font(.system(size: 25))
                    .foregroundStyle(.black)
                    .symbolEffect(.bounce)
                Image(systemName: "globe")
                    .font(.system(size: 25))
                    .foregroundStyle(.black)
                    .symbolEffect(.pulse)
            }
            
            // MARK: - Text
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            // MARK: - Image
            Image("j")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 300, height: 200)
            
          
            // MARK: - Another Text
            Text("Welcome to SwiftUI")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            // MARK: - Button
            Button("Click Me") {
                print("clicked")
            }
            .font(.headline)
            .buttonStyle(.bordered)
            .tint(.orange)
            .controlSize(.extraLarge)
            
            
        }
        .padding(30)
    }
}

#Preview {
    ContentView()
}
