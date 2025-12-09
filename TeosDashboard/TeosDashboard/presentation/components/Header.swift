//
//  Header.swift
//  TeosDashboard
//
//  Created by Nico Molina on 08/12/2025.
//

import SwiftUI

struct Header: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("$2.589,50")
                    .font(.system(size: 32, weight: .bold, design: .default))
                
                Spacer()
                
                HStack {
                    Image(systemName: "bell")
                        .font(.system(size: 24))
                        .foregroundColor(.black)

                    AvatarView(image: nil, size: 40, cornerRadius: 16)
                }

            }
            
            Text("Available Balance")
                .font(.system(size: 14, weight: .medium))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color.red)
    }
}

#Preview {
    Header()
}

struct AvatarView: View {
    let image: Image?
    let size: CGFloat
    let cornerRadius: CGFloat

    var body: some View {
        Group {
            if let image = image {
                image
                    .resizable()
                    .scaledToFill()
            } else {
                Color.blue
            }
        }
        .frame(width: size, height: size)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .clipped()
    }
}
