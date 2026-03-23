import SwiftUI

struct CircleButton: View {
    var image: String
    var imageSize: CGSize?
    var circleSize: CGSize = .init(width: 44, height: 44)
    var color: Color? = .activePackages
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Circle()
                    .fill(color ?? .activePackages)
                    .frame(width: circleSize.width, height: circleSize.height)
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageSize?.width, height: imageSize?.height)
                    .clipShape(Circle())
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
