//
//  StudyStartButtonView.swift
//  Projects
//
//  Created by 양시준 on 6/4/25.
//

import SwiftUI

struct StudyStartButtonView: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text("학습하기")
                    .font(.headline)
                    .foregroundStyle(AppColor.primary)
                    .padding(.leading, 16)
                Spacer()
                Image("studyIcon")
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
                    .stroke(AppColor.blue, lineWidth: 2)
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    StudyStartButtonView(action: {})
}
