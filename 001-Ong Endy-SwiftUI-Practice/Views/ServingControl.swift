//
//  ServingControl.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import SwiftUI

struct ServingControl: View {
    @Binding var servings: Int

    var body: some View {
        HStack {
            Text("Servings")
                .fontWeight(.medium)
            Spacer()

            Button {
                if servings > 1 { servings -= 1 }
            } label: {
                Image(systemName: "minus")
                    .frame(width: 32, height: 32)
                    .background(.gray.opacity(0.15), in: Circle())
            }
            .disabled(servings <= 1)

            Text("\(servings)")
                .fontWeight(.semibold)
                .frame(minWidth: 24)

            Button {
                servings += 1
            } label: {
                Image(systemName: "plus")
                    .frame(width: 32, height: 32)
                    .background(.gray.opacity(0.15), in: Circle())
            }
        }
        .foregroundStyle(.primary)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    ServingControl(servings: .constant(2))
        .padding()
        .background(Color(red: 0.96, green: 0.94, blue: 0.91))
}
