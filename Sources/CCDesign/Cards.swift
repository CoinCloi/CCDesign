//
//  Components.swift
//  CCDesign
//
//  Created by Will Zhang on 4/3/25.
//

import SwiftUI

public struct CardStyle: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .padding(.medium)
            .background {
                RoundedRectangle(cornerSize: CGSize(width: .medium, height: .medium))
                    .foregroundStyle(.thinMaterial.shadow(.drop(radius: 5, x: 5, y: 5)))
            }
    }
}

extension View {
    func cardStyle() -> some View {
        self.modifier(CardStyle())
    }
}
