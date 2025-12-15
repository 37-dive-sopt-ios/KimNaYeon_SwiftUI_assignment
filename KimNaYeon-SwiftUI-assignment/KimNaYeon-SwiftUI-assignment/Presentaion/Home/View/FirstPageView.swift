//
//  FirstPageView.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import SwiftUI

struct FirstPageView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    private let menuColumns: [GridItem] = Array(
            repeating: GridItem(.flexible(), spacing: 0), count: 5
        )
    
    private let martRows: [GridItem] = [
        GridItem(.fixed(74), spacing: 0)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            header
                .padding(.top, 12)
                .padding(.bottom, 32)
                .background(
                    LinearGradient(colors: [
                        Color.baeminbaeminBackgroundWhite,
                        Color.backgroundBottom
                    ], startPoint: .top, endPoint: .bottom)
                )
            
            menu
            
            LazyVGrid(columns: menuColumns, spacing: 12) {
                ForEach(viewModel.menuListModel) { model in
                    FirstPageItem(model: model)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 12)
            
            moreMenu
                .padding(.top, 21)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: martRows, spacing: 9) {
                    ForEach(viewModel.martListModel) { model in
                        FirstPageItem(model: model)
                    }
                }
                .padding(.leading, 16)
                .padding(.vertical, 12)
            }
            .frame(height: 96)
            
            Color.baeminbaeminBackgroundWhite
                .frame(height: 10)
            
            TabView {
                ForEach(1...4, id: \.self) { index in
                    Image("power\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 114)
                        .clipped()
                }
            }
            .frame(height: 114)
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .background(.baeminWhite)
    }
}

extension FirstPageView {
    private var header: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(.bMart)
            HStack(alignment: .center, spacing: 2) {
                Text("전상품 쿠폰팩 + 60%특가")
                    .applyBaeminFont(.head_b_16)
                    .foregroundColor(.baeminBlack)
                Image(.chevronRight)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Spacer()
            }
        }
        .padding(.leading, 16)
    }
    
    private var menu: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.baeminWhite)
                .shadow(color: .baeminMint500.opacity(0.25), radius: 4, y: -4)
            VStack(alignment: .center, spacing: 0) {
                BaeminSegmentedControl(selectedCategory: $viewModel.selectedCategory)
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.baeminGray200)
            }
        }
        .frame(height: 48)
        .padding(.horizontal, 0)
        .padding(.top, -5)
    }
    
    private var moreMenu: some View {
        VStack(alignment: .center, spacing: 0) {
            Color.baeminbaeminBackgroundWhite
                .frame(height: 1)
            
            HStack(alignment: .center, spacing: 0) {
                Text("음식배달")
                    .foregroundStyle(.baeminBlack)
                    .applyBaeminFont(.head_b_14)
                Text("에서 더보기")
                    .foregroundStyle(.baeminBlack)
                    .applyBaeminFont(.body_r_14)
                Image(.chevronRight)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .padding(.leading, 4)
            }
            .frame(height: 34)
            
            Color.baeminbaeminBackgroundWhite
                .frame(height: 10)
        }
    }
}
