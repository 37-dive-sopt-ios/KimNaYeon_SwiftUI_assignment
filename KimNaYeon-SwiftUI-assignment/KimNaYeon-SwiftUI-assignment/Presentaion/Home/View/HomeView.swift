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
        VStack(alignment: .center, spacing: 0) {
            baeminHeader
                .padding(.top,9)
            
            baeminTextField
                .padding(.top, 10)
                .padding(.bottom, 12)
            
            ScrollView(.vertical, showsIndicators: false) {
                FirstPageView(viewModel: viewModel)
                
                SecondPageView(viewModel: viewModel)
            }
        }
        .background(.baeminbaeminBackgroundWhite)
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
                .resizable()
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
