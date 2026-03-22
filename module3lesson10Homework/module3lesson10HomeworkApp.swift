import SwiftUI
import Combine

class AppViewModel: ObservableObject {
    @Published var isShowOnboard: Bool = true    // ===>>> userDefaults
}



@main
struct module3lesson10HomeworkApp: App {
    @StateObject var viewModel: AppViewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            if viewModel.isShowOnboard {
                OnboardingView()
                    .environment(\.font, .custom(Poppins.regular.rawValue, size: 16))
                    .environmentObject(viewModel)
            } else {
                ContentView()
                    .environment(\.font, .custom(Poppins.regular.rawValue, size: 16))
            }
        }
    }
}
