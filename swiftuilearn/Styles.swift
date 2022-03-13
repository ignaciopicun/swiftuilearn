import SwiftUI

struct StrokeStyle: ViewModifier {
    var cornerRadius: CGFloat
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        let startPointOpacity = colorScheme == .dark ? 0.6 : 0.3
        let endPointOpacity = colorScheme == .dark ? 0.3 : 0.1
        content
            .overlay(
                RoundedRectangle(
                    cornerRadius: cornerRadius,
                    style: .continuous
                )
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(startPointOpacity),
                            .black.opacity(endPointOpacity),
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    style: .init(lineWidth: 1)
                )
                .blendMode(.overlay)
            )
    }
}

extension View {
    func strokeStyle(cornerRadius: CGFloat = 30.0) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
