//
//  BadgeSoft.swift
//  TeosDashboard
//
//  Created by Nico Molina on 09/12/2025.
//

import SwiftUI

struct BadgeSoft: View {
    let text: String
    let systemIcon: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Image(systemName: systemIcon)
                    .foregroundColor(.white)
                    .font(.system(size: 16))

                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(Color.blue)
            .cornerRadius(16)
            .fixedSize()
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    BadgeSoft(
        text: "Notificaciones",
        systemIcon: "bell"
    ) {
        print("Tag tapped")
    }
}
