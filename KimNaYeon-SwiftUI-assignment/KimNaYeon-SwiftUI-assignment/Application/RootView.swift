//
//  RootView.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/8/25.
//

import SwiftUI

struct RootView: View {
    @StateObject var tabBarViewModel = TabBarViewModel()

    var body: some View {
        VStack(spacing: 0) {
            contentView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            BaeminTabBarView(viewModel: tabBarViewModel)
                .ignoresSafeArea(.keyboard)
        }
        .ignoresSafeArea(edges: .bottom)
    }

    @ViewBuilder
    private var contentView: some View {
        switch tabBarViewModel.selectedTab {
        case .home:
            HomeView()
        case .shopping:
            ShoppingView
        case .jjim:
            JjimView
        case .order:
            OrderView
        case .myBaemin:
            MyBaeminView
        }
    }
}

extension RootView {
    private var ShoppingView: some View {
        Text("Shopping")
            .font(.system(size: 30))
    }
    
    private var JjimView: some View {
        Text("Jjim")
            .font(.system(size: 30))
    }
    
    private var OrderView: some View {
        Text("Order")
            .font(.system(size: 30))
    }
    
    private var MyBaeminView: some View {
        Text("My Baemin")
            .font(.system(size: 30))
    }
}

#Preview {
    RootView()
}
