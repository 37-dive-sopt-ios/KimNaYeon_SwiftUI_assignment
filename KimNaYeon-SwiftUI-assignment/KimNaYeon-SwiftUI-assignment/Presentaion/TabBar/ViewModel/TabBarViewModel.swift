//
//  TabBarViewModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/8/25.
//

import SwiftUI

final class TabBarViewModel: ObservableObject {
    @Published var selectedTab: BaeminTabRoute = .home

    func select(_ tab: BaeminTabRoute) {
        selectedTab = tab
    }
}
