//
//  MethodStepCard.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import SwiftUI

struct MethodStepCard: View {
    let number: Int
    let step: MethodStep

    var body: some View {
        HStack(alignment: .top, spacing: 14) {

            Text("\(number)")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(Color(red: 0.75, green: 0.35, blue: 0.25))
                .frame(width: 28, height: 28)
                .background(Color(red: 0.95, green: 0.88, blue: 0.85), in: Circle())

            VStack(alignment: .leading, spacing: 6) {
                Text(step.text)

                if let minutes = step.timerMinutes {
                    Label("\(minutes) min timer", systemImage: "clock")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            Spacer()
        }
        .padding(16)
        .background(.white, in: RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    MethodStepCard(number: 1, step: SampleRecipes.all[3].steps[0])
        .padding()
        .background(Color(red: 0.96, green: 0.94, blue: 0.91))
}
