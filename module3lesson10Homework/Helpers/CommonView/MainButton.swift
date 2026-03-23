import SwiftUI

struct MainButton: View {
    var image: String
    var text: String
    var action: () -> Void
    
    init(image: String, text: String, action: @escaping () -> Void) {
        self.image = image
        self.text = text
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: 8){
                Text(text)
                    .font(type: .medium, size: 16)
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
            }
            .foregroundStyle(.white)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(colors: [.linerGradienOrangeOne, .linerGradientOrangeTwo],
                               startPoint: .leading, endPoint: .trailing)
            )
            .clipShape(Capsule())
        }
        .buttonStyle(PlainButtonStyle())
    }
}
