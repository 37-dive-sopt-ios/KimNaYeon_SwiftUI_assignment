//
//  HomeView.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/8/25.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            GeometryReader { geometry in
                let offset = geometry.frame(in: .global).minY
                ZStack {
                    baeminHeader
                        .padding(.top, 9)
                }
                .onChange(of: offset) { newValue in
                    viewModel.setOffset(offset: newValue)
                }
            }
            .frame(height: 33)
            .background(.baeminbaeminBackgroundWhite)
            
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                
                Section(
                    header: VStack(spacing: 0) {
                        baeminTextField
                            .padding(.top, 5)
                            .padding(.bottom, 12)
                    }
                        .frame(maxWidth: .infinity)
                        .background(.baeminbaeminBackgroundWhite)
                        .ignoresSafeArea(edges: .top)
                ) {
                    FirstPageView(viewModel: viewModel)
                    
                    SecondPageView(viewModel: viewModel)
                }
            }
        }
        .background(.baeminbaeminBackgroundWhite)
        .overlay(
            Rectangle()
                .foregroundColor(.baeminbaeminBackgroundWhite)
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                .edgesIgnoringSafeArea(.all)
                .opacity(viewModel.offsetY > -35 ? 0 : 1)
            , alignment: .top
        )
    }
}

extension HomeView {
    private var baeminHeader: some View {
        HStack(alignment: .center, spacing: 0) {
           Text("우리집")
                .applyBaeminFont(.head_b_16)
                .foregroundStyle(.baeminBlack)
                .padding(.leading, 4)
            
            Image(.myHouse)
                .padding(.leading, 3)
            
            Spacer()
            
            Image(.baeminDiscount)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.trailing, 12)
            
            Image(.alarm)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.trailing, 12)
            
            Image(.cart)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.trailing, 12)
        }
        .frame(height: 24)
        .padding(.horizontal, 16)
    }
    
    private var baeminTextField: some View {
        HStack(alignment: .center, spacing: 0) {
            TextField("찾아라! 맛있는 음식과 맛집", text: .constant(""))
                .applyBaeminFont(.body_r_14)
            
            Spacer()
            
            Image(.search)
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
        .padding(.horizontal, 17)
        .frame(height: 40)
        .background {
            RoundedRectangle(cornerRadius: 20)
                .fill(.baeminWhite)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.baeminBlack, lineWidth: 1)
        }
        .padding(.horizontal, 16)
    }
}
