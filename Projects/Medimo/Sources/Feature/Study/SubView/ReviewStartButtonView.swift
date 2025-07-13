import SwiftUI

struct ReviewStartButtonView: View {
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text("복습하기")
                    .font(.headline)
                    .foregroundStyle(AppColor.primaryPink)
                    .padding(.leading, 16)
                Spacer()
                Image("reviewIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.trailing, 24)
            }
            .frame(height: 60)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(AppColor.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(AppColor.pink, lineWidth: 2)
            )
        }
        .buttonStyle(.plain)
    }
}
