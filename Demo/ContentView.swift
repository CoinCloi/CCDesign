import SwiftUI
import CCDesignSystem

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.clear
            ScrollView {
                VStack(spacing: 10, content: {
                    HStack {
                        Spacer()
                        Text("Overview")
                            .font(.system(size: 24))
                            .bold()
                        Spacer()
                    }
                    .frame(height: 44)
                    .overlay {
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "gearshape.fill")
                                    .resizable()
                                    .padding(8)
                            }
                            .frame(width: 40, height: 40)
                            .padding(.leading, 8)
                            Spacer()
                        }
                    }
                    
                    HStack {
                        Capsule()
                            .fill(.foreground.shadow(.inner(radius: 5, x: 5, y: 5)))
                            .frame(width: 100)
                            .opacity(0.3)
                        
                        Capsule()
                            .frame(width: 100)
                            .opacity(0.3)
                        
                        Capsule()
                            .frame(width: 100)
                            .opacity(0.3)
                    }
                    .frame(height: 40)
                    ScrollView {
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .padding(.horizontal, 16)
                            .frame(height: 300)
                            .foregroundStyle(.thinMaterial.shadow(.drop(radius: 5, x: 5, y: 5)))
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .fill(.purple)
                            .overlay(alignment: .topTrailing) {
                                Button {} label: {
                                    Image(systemName: "xmark.circle.fill")
                                        .font(.system(size: 24))
                                        .opacity(0.5)
                                        .padding(16)
                                }
                                .foregroundStyle(.white)
                            }
                            .padding(.horizontal, 16)
                            .frame(height: 300)
                            .foregroundStyle(.thinMaterial.shadow(.drop(radius: 5, x: 5, y: 5)))
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .padding(.horizontal, 16)
                            .frame(height: 100)
                            .foregroundStyle(.thinMaterial.shadow(.drop(radius: 5, x: 5, y: 5)))
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .fill(Color.purple.gradient)
                            .padding(.horizontal, 16)
                            .frame(height: 150)
                            .foregroundStyle(.thinMaterial.shadow(.drop(radius: 5, x: 5, y: 5)))
                    }    
                })
            }
        }
        .foregroundStyle(.white)
        .background {
            Rectangle()
                .fill(.background)
                .foregroundStyle(Color(hue: 0.5, saturation: 0, brightness: 0.2))
                                 VStack(content: {
                    Rectangle()
                        .fill(Color.accentColor.gradient)
                        .frame(height: 250)
                    Spacer()
                })    
        }
        .ignoresSafeArea()
    }
}
