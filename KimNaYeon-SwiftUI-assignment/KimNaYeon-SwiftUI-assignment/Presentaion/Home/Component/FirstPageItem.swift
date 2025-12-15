//
//  FirstPageItem.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import SwiftUI

struct FirstPageItem: View {
    
    let model: FirstPageListModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Rectangle()
                .fill(.baeminbaeminBackgroundWhite)
                .frame(width: 58, height: 58)
                .cornerRadius(20)
            Text(model.firstName)
                .applyBaeminFont(.body_r_14)
                .foregroundStyle(.baeminBlack)
                .padding(.top, 6)
        }
    }
}
