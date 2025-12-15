//
//  FirstPageListModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import Foundation

struct FirstPageListModel: Identifiable, Decodable {
    var id: Int { firstId }
    
    let firstId: Int
    let firstName: String
}
        
extension FirstPageListModel {
    static func menuDummy() -> [FirstPageListModel] {
        return [
            FirstPageListModel(firstId: 1, firstName: "한그릇"),
            FirstPageListModel(firstId: 2, firstName: "치킨"),
            FirstPageListModel(firstId: 3, firstName: "카페·디저트"),
            FirstPageListModel(firstId: 4, firstName: "피자"),
            FirstPageListModel(firstId: 5, firstName: "분식"),
            FirstPageListModel(firstId: 6, firstName: "고기"),
            FirstPageListModel(firstId: 7, firstName: "찜·탕"),
            FirstPageListModel(firstId: 8, firstName: "야식"),
            FirstPageListModel(firstId: 9, firstName: "패스트푸드"),
            FirstPageListModel(firstId: 10, firstName: "픽업"),
            ]
    }
    
    static func martDummy() -> [FirstPageListModel] {
        return [
            FirstPageListModel(firstId: 1, firstName: "B마트"),
            FirstPageListModel(firstId: 2, firstName: "CU"),
            FirstPageListModel(firstId: 3, firstName: "이마트슈퍼"),
            FirstPageListModel(firstId: 4, firstName: "홈플러스"),
            FirstPageListModel(firstId: 5, firstName: "GS25"),
            FirstPageListModel(firstId: 6, firstName: "이마트")
            ]
    }
}
