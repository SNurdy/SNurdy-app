//  TestEndView.swift
//  Projects
//
//  Created by 이서현 on 6/7/25.
//

import SwiftUI

struct TestEndView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    let studyManager: StudyManager = .shared

    @Binding var isStudyInProgress: Bool
    var index: Int

    @Binding var learningType: LearningType

    var top: String {
        TestEndCheering.randomTopMessage(for: learningType)
    }

    var bottom: String {
        TestEndCheering.randomBottomMessage(for: learningType)
    }

    var body: some View {
        VStack {
            Spacer(minLength: 140)
            
            Text(top)
                .font(.body)
                .foregroundStyle(AppColor.grey4)
                .padding(.bottom, 17)
            Text(bottom)
                .font(.title)
                .foregroundStyle(AppColor.grey4)
                .padding(.bottom, 54)
            
            ZStack {
                Image("cardImage")
                    .padding(.leading, 40)
                VStack {
                    Text("오늘 학습한 용어")
                        .font(.body)
                        .foregroundStyle(AppColor.white)
                        .padding(.bottom, 10)
                    
                    Text("\(index + 1)개")
                        .font(.largeTitle)
                        .foregroundStyle(AppColor.navy)
                }
            }
            
            Spacer()
            
            NextButton(
                buttonText: learningType == .study ? "학습 완료하기" : "복습 완료하기",
                action: {
                    studyManager.countCurrentStreakAndSave()
                    withAnimation(.none) {
                        navigationManager.studyPath = []
                        isStudyInProgress = false
                    }
                }
            )
            .padding(.horizontal, 60)
            .padding(.bottom, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppColor.bgColor)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}
