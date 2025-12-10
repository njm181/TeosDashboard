//
//  Shortcut.swift
//  TeosDashboard
//
//  Created by Nico Molina on 09/12/2025.
//

import SwiftUI

struct Shortcut: View {
    
    let systemName: String
    let size: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .font(.system(size: size))
                .foregroundColor(.white)
                .frame(width: size * 2, height: size * 2)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    Shortcut(
        systemName: "creditcard",
        size: 30
    ) {
        print("Bell tapped")
    }
}
