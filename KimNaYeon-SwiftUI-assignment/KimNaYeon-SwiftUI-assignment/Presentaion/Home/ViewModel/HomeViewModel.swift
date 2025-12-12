//
//  HomeViewModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var menuListModel: [FirstPageListModel] = FirstPageListModel.menuDummy()
    @Published var martListModel: [FirstPageListModel] = FirstPageListModel.martDummy()
    @Published var oneDishListModel: [OneDishListModel] = OneDishListModel.dummy()
    @Published var recentOrderModel: [LastModel] = LastModel.dummy()
    @Published var discountModel: [LastModel] = []
    
    init() {
        let dummy = LastModel.dummy()
        discountModel = dummy.sorted { $0.id > $1.id }
    }
}
