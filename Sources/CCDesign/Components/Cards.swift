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
            .padding(.medium)
            .background {
                RoundedRectangle(cornerSize: CGSize(width: .medium, height: .medium))
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
    Rectangle()
        .cardStyle()
})
