import SwiftUI

extension Text {
    func font(type: Poppins, size: CGFloat) -> some View {
        self.font(.custom(type.rawValue, size: size))
    }
}
