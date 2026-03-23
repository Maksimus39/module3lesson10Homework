import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        VStack{
            Spacer()
            
            VStack(spacing: 89) {
                VStack(spacing: 28){
                    VStack(spacing: 4) {
                        HStack(spacing: 9.67) {
                            Image(.box2)
                            Text("3000+ Successful Delivery")
                                .foregroundStyle(.onboardingColorTextOrange)
                                .font(type: .medium, size: 16)
                        }
                        
                        VStack(spacing: -8) {
                            Text("Your Ultimate")
                                .foregroundStyle(.onboardingColorTextDark)
                                .font(type: .regular, size: 28)
                            
                            Text("Shipping Company")
                                .font(type: .semibold, size: 28)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(
                                    LinearGradient(colors: [.linerGradienOrangeOne, .linerGradientOrangeTwo],
                                                   startPoint: .leading, endPoint: .trailing)
                                )
                        }
                    }
                    VStack(spacing: 16) {
                        Image(.promo1)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 375, height: 331)
                        
                        HStack(spacing: 4) {
                            Text("2 active packages")
                                .font(type: .medium, size: 12)
                            
                            HStack(spacing: -5) {
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundStyle(.green)
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundStyle(.red)
                                    .zIndex(1)
                            }
                        }
                        .foregroundStyle(.onboardingColorTextDark)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .background(.activePackages)
                        .clipShape(Capsule())
                    }
                }
            }
            
            Spacer()
            
            MainButton(image: "arrowshape.right.circle", text: "Check your packages"){
                appViewModel.isShowOnboard = !true
            }
            .padding(.bottom, 34)
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: .infinity)
        .onAppear{
            for family in UIFont.familyNames.sorted(){
                let names = UIFont.fontNames(forFamilyName: family)
                print("Family: \(family) font names: \(names)")
            }
        }
    }
}





#Preview {
    OnboardingView()
        .environment(\.font, .custom(Poppins.regular.rawValue, size: 16))
}
