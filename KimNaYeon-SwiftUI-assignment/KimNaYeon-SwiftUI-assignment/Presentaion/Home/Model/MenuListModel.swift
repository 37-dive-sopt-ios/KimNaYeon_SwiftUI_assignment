//
//  MenuListModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import Foundation

struct MenuListModel: Identifiable, Decodable {
    var id: Int { menuId }
    
    let menuId: Int
    let menuName: String
}
        
extension MenuListModel {
    static func dummy() -> [MenuListModel] {
        return [
            MenuListModel(menuId: 1, menuName: "한그릇"),
            MenuListModel(menuId: 2, menuName: "치킨"),
            MenuListModel(menuId: 3, menuName: "카페·디저트"),
            MenuListModel(menuId: 4, menuName: "피자"),
            MenuListModel(menuId: 5, menuName: "분식"),
            MenuListModel(menuId: 6, menuName: "고기"),
            MenuListModel(menuId: 7, menuName: "찜·탕"),
            MenuListModel(menuId: 8, menuName: "야식"),
            MenuListModel(menuId: 9, menuName: "패스트푸드"),
            MenuListModel(menuId: 10, menuName: "픽업"),
            ]
    }
}
