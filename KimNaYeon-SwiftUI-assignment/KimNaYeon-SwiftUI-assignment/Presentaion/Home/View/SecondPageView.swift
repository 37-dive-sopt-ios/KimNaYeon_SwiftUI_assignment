//
//  SecondPageView.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/14/25.
//

import SwiftUI

struct SecondPageView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    private let oneDishRows: [GridItem] = [
        GridItem(.fixed(255), spacing: 0)
    ]
    
    private let recentRows: [GridItem] = [
        GridItem(.fixed(228), spacing: 0)
    ]
    
    private let discountRows: [GridItem] = [
        GridItem(.fixed(230), spacing: 0)
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(
                colors: [
                    Color.backgroundTop,
                    Color.baeminWhite
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(height: 120)
            
            VStack(spacing: 0) {
                Rectangle()
                    .frame(width: .infinity, height: 10)
                    .foregroundStyle(.baeminbaeminBackgroundWhite)
                
                OneDish
                
                RecentView
                
                DiscountView
            }
        }
        .background(.baeminWhite)
    }
}

extension SecondPageView {
    private var OneDish: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                Text("우리 동네 한그릇 인기 랭킹")
                    .applyBaeminFont(.title_sb_18)
                    .foregroundStyle(.baeminWhite)
                
                Image(.iIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(.leading, 3)
                
                Spacer()
                
                Text("전체보기")
                    .applyBaeminFont(.body_r_14)
                    .foregroundStyle(.baeminWhite)
                
                Image(.chevronRightWhite)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .padding(.leading, 4)
            }
            .padding(.horizontal, 16)
            .padding(.top, 24)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: oneDishRows, spacing: 10) {
                    ForEach(viewModel.oneDishListModel) { model in
                        OneDishItem(model: model)
                    }
                }
                .padding(.leading, 16)
                .padding(.top, 18)
            }
            
            Rectangle()
                .frame(width: .infinity, height: 10)
                .foregroundStyle(.baeminbaeminBackgroundWhite)
                .padding(.top, 20)
        }
    }
    
    private var RecentView: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                Text("최근에 주문했어요")
                    .applyBaeminFont(.title_sb_18)
                    .foregroundStyle(.baeminBlack)
                
                Image(.iIconGray)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(.leading, 3)
                
                Spacer()
                
                Text("전체보기")
                    .applyBaeminFont(.body_r_14)
                    .foregroundStyle(.baeminBlack)
                
                Image(.chevronRight)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .padding(.leading, 4)
            }
            .padding(.horizontal, 16)
            .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: recentRows, spacing: 10) {
                    ForEach(viewModel.recentOrderModel) { model in
                        RecentItem(model: model)
                    }
                }
                .padding(.leading, 16)
                .padding(.top, 18)
            }
            
            Rectangle()
                .frame(width: .infinity, height: 10)
                .foregroundStyle(.baeminbaeminBackgroundWhite)
                .padding(.top, 20)
        }
    }
    
    private var DiscountView: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .center, spacing: 0) {
                        Text("무조건 할인하는 가게")
                            .applyBaeminFont(.title_sb_18)
                            .foregroundStyle(.baeminBlack)
                        
                        Image(.iIconGray)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                            .padding(.leading, 3)
                    }
                    
                    Text("2천원 이상 또는 15% 이상 할인중")
                        .applyBaeminFont(.body_r_14)
                        .foregroundStyle(.baeminGray300)
                        .padding(.top, 12)
                }
                
                Spacer()
                
                Image(.downWon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 66, height: 59)
            }
            .padding(.leading, 16)
            .padding(.trailing, 23)
            .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: discountRows, spacing: 10) {
                    ForEach(viewModel.discountModel) { model in
                        AlwaysDiscountItem(model: model)
                    }
                }
                .padding(.leading, 11)
                .padding(.top, 18)
            }
            
            Button {
                
            } label: {
                HStack(alignment: .center, spacing: 0) {
                    Text("할인하는 가게")
                        .applyBaeminFont(.head_b_14)
                        .foregroundStyle(.baeminBlack)
                    
                    Text(" 더보기")
                        .applyBaeminFont(.body_r_14)
                        .foregroundStyle(.baeminBlack)
                    
                    Image(.chevronRight)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                        .padding(.leading, 4)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
                .background(.baeminWhite)
                .overlay {
                    RoundedRectangle(cornerRadius: 17)
                        .stroke(.baeminGray200, lineWidth: 1)
                }
                .clipShape(RoundedRectangle(cornerRadius: 17))
            }
            .padding(.top, 20)
            .padding(.bottom, 10)
        }
    }
}
