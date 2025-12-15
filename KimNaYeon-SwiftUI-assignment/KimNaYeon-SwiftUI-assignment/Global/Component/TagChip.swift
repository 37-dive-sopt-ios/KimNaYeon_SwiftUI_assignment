//
//  TagChip.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/14/25.
//

import SwiftUI

struct TagChip: View {
    
    let tags: [String]
    
    var body: some View {
        LazyHStack(spacing: 4) {
            ForEach(tags, id: \.self) { tag in
                tagItem(for: tag)
            }
        }
    }

    private func tagItem(for text: String) -> some View {
        Text(text)
            .applyBaeminFont(.title_sb_10)
            .frame(height: 16)
            .padding(.horizontal, 5)
            .padding(.vertical, 3)
            .background(.baeminbaeminBackgroundWhite)
            .foregroundColor(.baeminGray800)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}
