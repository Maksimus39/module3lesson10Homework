import SwiftUI

struct MainView: View {
    @StateObject var viewMailModel: MainViewModel = MainViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
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
                                    print("myAvatar")
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
                        .padding(12)
                        .background(.activePackages)
                        .clipShape(Capsule())
                        
                        // cart mail
                        VStack {
                            ForEach(viewMailModel.mailList){ el in
                                MailItemView(mailElement: el)
                            }
                        }
                    }
                }
                
                MainButton(image: "arrow.up.right.circle", text: "Tracking"){
                    print("Tracking")
                }
            }
            .padding(.horizontal, 20)
        }
        .onAppear {
            viewMailModel.getMailList()
        }
    }
}

extension MainView {
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





#Preview {
    MainView()
        .environment(\.font, .custom(Poppins.regular.rawValue, size: 16))
}
