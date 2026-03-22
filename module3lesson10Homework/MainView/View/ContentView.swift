import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                header
                VStack(alignment: .leading, spacing: 12) {
                    Image(.imagePng)
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        HStack(spacing: 8) {
                            CircleButton(image: "myAvatar",
                                         imageSize: .init(width: 48, height: 48)) {
                                print("avatar")
                            }
                            VStack(alignment: .leading) {
                                Text("(900)-591-89-11")
                                    .font(type: .medium, size: 14)
                                Text("Maxim Minakov")
                                    .font(type: .medium, size: 16)
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 12){
                                CircleButton(image: "Message circle",
                                             imageSize: .init(width: 20, height: 20),
                                             circleSize: .init(width: 48, height: 48),
                                             color: .white) {
                                    print("Message circle")
                                }
                                
                                CircleButton(image: "Calling",
                                             imageSize: .init(width: 20, height: 20),
                                             circleSize: .init(width: 48, height: 48),
                                             color: .white) {
                                    print("Calling")
                                }
                            }
                        }
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 12)
                    .background(.activePackages)
                    .clipShape(Capsule())
                }
            }
        }
        .padding(.horizontal, 20)
    }
}


extension ContentView {
    var header: some View {
        HStack{
            CircleButton(image: "Bus",
                         imageSize: .init(width: 24, height: 24),
                         circleSize: .init(width: 44, height: 44)) {
                print("Bus")
            }
            
            Spacer()
            
            Text("Packages")
                .font(type: .medium, size: 16)
            
            Spacer()
            
            CircleButton(image: "Share",
                         imageSize: .init(width: 24, height: 24),
                         circleSize: .init(width: 44, height: 44)) {
                print("Share")
            }
        }
    }
}

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

#Preview {
    ContentView()
        .environment(\.font, .custom(Poppins.regular.rawValue, size: 16))
}
