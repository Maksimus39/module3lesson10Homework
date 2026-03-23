import SwiftUI

struct MailItemView: View {
    var mailElement: MailItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // 1 section
            HStack {
                createMailImage(image: Image("boxImg"))
                Spacer()
                VStack(alignment: .trailing) {
                    Text("#ER-ML")
                        .font(type: .medium, size: 24)
                    Text(mailElement.numberMail)
                        .font(type: .regular, size: 24)
                }
            }
            // 2 section
            HStack {
                VStack(alignment: .leading) {
                    Text("From")
                        .foregroundStyle(.mailCountry)
                        .font(type: .medium, size: 14)
                    Text(mailElement.countryMail)
                        .foregroundStyle(.mailCountryDesc)
                        .font(type: .medium, size: 16)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("To")
                        .foregroundStyle(.mailCountry)
                        .font(type: .medium, size: 14)
                    Text("Kaliningrad, RU")
                        .foregroundStyle(.mailCountryDesc)
                        .font(type: .medium, size: 16)
                }
            }
            // 3 section
            HStack {
                HStack(spacing: 4) {
                    Text(mailElement.statusMail)
                        .foregroundStyle(mailElement.colorCard.getTextCard())
                    
                    Circle()
                        .foregroundStyle(mailElement.colorCard.getCircleCard())
                        .frame(width: 10, height: 10)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 4)
                .background(mailElement.colorCard.getBackgroundCard())
                .clipShape(Capsule())
                
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Date")
                        .foregroundStyle(.mailCountry)
                        .font(type: .medium, size: 14)
                    Text(mailElement.dateMail)
                        .foregroundStyle(.mailCountryDesc)
                        .font(type: .medium, size: 16)
                }
            }
        }
        .padding(20)
        .background(mailElement.colorCard.getColorCard())
        .cornerRadius(36)
    }
    @ViewBuilder
    func createMailImage(image: Image) -> some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: 118, height: 93)
    }
}
