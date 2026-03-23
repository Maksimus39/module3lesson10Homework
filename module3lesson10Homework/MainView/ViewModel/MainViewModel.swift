import Foundation
import SwiftUI
import Combine


enum ColorType: Hashable {
    case london
    case tokio
    
    func getColorCard() -> Color {
        switch self {
        case .london:
            return Color(.mailOneCart.opacity(0.08))
        case .tokio:
            return Color(.mailTwoCart)
        }
    }
    
    func getTextCard() -> Color {
        switch self {
        case .london:
            return Color(.onboardingColorTextOrange)
        case .tokio:
            return Color(.arrivedText)
        }
    }
    
    func getCircleCard() -> Color {
        switch self {
        case .london:
            return Color(.onboardingColorTextOrange)
        case .tokio:
            return Color(.arrivedText)
        }
    }
    
    func getBackgroundCard() -> Color {
        switch self {
        case .london:
            return Color(.getBackgroundCardOrange)
        case .tokio:
            return Color(.getBackgroundCartGreen)
        }
    }
    
}

class MainViewModel: ObservableObject {
    @Published var mailList: [MailItem] = []
    
    func getMailList() {
        self.mailList = MailItem.mockData()
    }
}

struct MailItem: Identifiable {
    var id: String = UUID().uuidString
    var iconMail: String
    var typeMail: String
    var numberMail: String
    var countryMail: String
    var cityMail: String
    var statusMail: String
    var dateMail: String
    var colorCard: ColorType
    
    static func mockData() -> [MailItem] {
        [
            MailItem(iconMail: "boxImg",
                     typeMail: "#ER-ML",
                     numberMail: "550-145-17L",
                     countryMail: "London, UK",
                     cityMail: "Kaliningrad, RU",
                     statusMail: "Transit",
                     dateMail: "22.01.206",
                     colorCard: .london),
            
            
            MailItem(iconMail: "boxImg",
                     typeMail: "#ER-ML",
                     numberMail: "271-029-33P",
                     countryMail: "Tokio, JP",
                     cityMail: "Kaliningrad, RU",
                     statusMail: "Arrived",
                     dateMail: "23.01.206",
                     colorCard: .tokio)
        ]
    }
}
