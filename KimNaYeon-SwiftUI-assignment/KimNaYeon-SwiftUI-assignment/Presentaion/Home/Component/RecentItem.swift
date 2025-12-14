//
//  RecentItem.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/14/25.
//

import SwiftUI

struct RecentItem: View {
    
    let model: LastModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(.baeminGray200)
                .frame(width: 188, height: 126)
                .cornerRadius(8)
            
            HStack(alignment: .center, spacing: 0) {
                Image(.time)
                    .resizable()
                    .frame(width: 12, height: 12)
                    .scaledToFit()
                
                Text("최근 1번 주문한 가게")
                    .applyBaeminFont(.body_r_12)
                    .foregroundStyle(.baeminBlue)
                    .padding(.leading, 2)
            }
            .padding(.top, 12)
            
            HStack(alignment: .center, spacing: 0) {
                Text(model.lastName)
                    .applyBaeminFont(.head_b_14)
                    .foregroundStyle(.baeminBlack)
                
                Image(.star2)
                    .resizable()
                    .frame(width: 11, height: 10)
                    .padding(.leading, 1)
                
                Text(model.lastRate)
                    .applyBaeminFont(.head_b_14)
                    .foregroundStyle(.baeminBlack)
                    .padding(.leading, 2)
                
                Text(model.lastReviewCount)
                    .applyBaeminFont(.body_r_14)
                    .foregroundStyle(.baeminGray600)
                    .padding(.leading, 1)
            }
            .padding(.top, 9)
            
            HStack(alignment: .center, spacing: 0) {
                Image(.wonIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 13, height: 13)
                
                Text(model.lastTime)
                    .applyBaeminFont(.body_r_13)
                    .foregroundStyle(.baeminBlack)
                    .padding(.leading, 2)
                
                Image(.baminClub)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .padding(.leading, 6)
                
                Text("무료배달")
                    .applyBaeminFont(.head_b_13)
                    .foregroundStyle(.baeminPurple)
                    .padding(.leading, 1)
            }
            .padding(.top, 7)
            
            HStack(alignment: .center, spacing: 0) {
                Image(.badge)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 16)
                
                TagChip(tags: model.lastTag)
                    .padding(.leading, 4)
            }
            .padding(.top, 7)
        }
        .frame(height: 216)
    }
}
