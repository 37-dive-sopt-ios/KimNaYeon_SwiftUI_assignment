//
//  OneDishItem.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/14/25.
//

import SwiftUI

struct OneDishItem: View {
    
    let model: OneDishListModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(.baeminGray200)
                .frame(width: 145, height: 145)
                .cornerRadius(8)
            
            HStack(alignment: .center, spacing: 0) {
                Text(model.dishShopName)
                    .applyBaeminFont(.body_r_12)
                    .foregroundStyle(.baeminGray600)
                
                Image(.star2)
                    .resizable()
                    .frame(width: 11, height: 10)
                    .padding(.leading, 5)
                
                Text(model.dishRank)
                    .applyBaeminFont(.body_r_12)
                    .foregroundStyle(.baeminGray600)
                    .padding(.leading, 2)
                
                Text(model.dishReviewCount)
                    .applyBaeminFont(.body_r_12)
                    .foregroundStyle(.baeminGray600)
                    .padding(.leading, 4)
            }
            .padding(.top, 9)
            
            Text(model.dishName)
                .applyBaeminFont(.body_r_14)
                .foregroundStyle(.baeminBlack)
                .padding(.top, 6)
            
            HStack(alignment: .center, spacing: 0) {
                Text(model.dishDiscount)
                    .applyBaeminFont(.head_b_14)
                    .foregroundStyle(.baeminRed)
                
                Text(model.dishWon)
                    .applyBaeminFont(.head_b_14)
                    .foregroundStyle(.baeminBlack)
                    .padding(.leading, 6)
            }
            .padding(.top, 6)
            
            Text(model.dishNotNowWon)
                .applyBaeminFont(.body_r_12)
                .foregroundStyle(.baeminGray600)
                .strikethrough(true, color: .baeminGray600)
                .padding(.top, 6)
            
            Text("최소주문금액 없음")
                .applyBaeminFont(.head_b_13)
                .foregroundStyle(.baeminPurple)
                .padding(.top, 6)
        }
        .frame(width: 145, height: 243)
    }
}

