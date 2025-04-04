//
//  Components.swift
//  CCDesign
//
//  Created by Will Zhang on 4/3/25.
//

import SwiftUI

struct CardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.cc_spacing_md)
            .background {
                RoundedRectangle(cornerSize: CGSize(width: .cc_radius_md, height: .cc_radius_md))
                    .foregroundStyle(.thinMaterial.shadow(.drop(radius: 5, x: 5, y: 5)))
            }
    }
}

extension View {
    public func cardStyle() -> some View {
        self.modifier(CardStyle())
    }
}

#Preview(body: {
    VStack {
        HStack {
            ZStack {
                Color.white
                    .overlay(.yellow.gradient.secondary)
                Color.yellow
                    .frame(width: 100, height: 100)
                    .cardStyle()
            }
            ZStack {
                Color.white
                    .overlay(.green.gradient.secondary)
                Color.green
                    .frame(width: 100, height: 100)
                    .cardStyle()
            }
        }
        HStack {
            ZStack {
                Color.white
                    .overlay(.blue.gradient.secondary)
                Color.blue
                    .frame(width: 100, height: 100)
                    .cardStyle()
            }
            ZStack {
                Color.white
                    .overlay(.purple.gradient.secondary)
                Color.purple
                    .frame(width: 100, height: 100)
                    .cardStyle()
            }
        }
    }
})
