//
//  Divider.swift
//  Moonshot
//
//  Created by Ayrton Parkinson on 2024/07/20.
//

import SwiftUI

struct Divider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    Divider()
}
