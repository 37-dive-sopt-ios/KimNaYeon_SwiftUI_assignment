//
//  BaeminTabBarView.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/5/25.
//

import SwiftUI

enum BaeminTabRoute: Int, CaseIterable, Hashable {
    case home, shopping, jjim, order, myBaemin

    var title: String {
        switch self {
        case .home:
            return "홈"
        case .shopping:
            return "장보기·쇼핑"
        case .jjim:
            return "찜"
        case .order:
            return "주문내역"
        case .myBaemin:
            return "마이배민"
        }
    }

    var icon: UIImage {
        switch self {
        case .home:
            return .home
        case .shopping:
            return .shopping
        case .jjim:
            return .jjim
        case .order:
            return .order
        case .myBaemin:
            return .myBaemin
        }
    }
}


struct BaeminTabBarView: View {
    @ObservedObject var viewModel: TabBarViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            ForEach(BaeminTabRoute.allCases, id: \.self) { tab in
                Button {
                    viewModel.select(tab)
                } label: {
                    VStack(alignment: .center, spacing: 5) {
                        Image(uiImage: tab.icon)
                            .resizable()
                            .foregroundStyle(viewModel.selectedTab == tab ? .baeminBlack : .baeminGray700)
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(tab.title)
                            .applyBaeminFont(.body_r_10)
                            .foregroundStyle(viewModel.selectedTab == tab ? .baeminBlack : .baeminGray700)
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)
                }
            }
        }
        .frame(height: 82)
        .background(.baeminWhite)
        .shadow(color: .baeminBlack.opacity(0.05), radius: 4, x: 0, y: -4)
    }
}
