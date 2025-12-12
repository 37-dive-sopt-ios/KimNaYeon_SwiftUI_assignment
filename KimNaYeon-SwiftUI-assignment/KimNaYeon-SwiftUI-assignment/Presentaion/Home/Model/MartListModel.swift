//
//  MartListModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import Foundation

struct MartListModel: Identifiable, Decodable {
    var id: Int { martId }
    
    let martId: Int
    let martName: String
}
        
extension MartListModel {
    static func dummy() -> [MartListModel] {
        return [
            MartListModel(martId: 1, martName: "B마트"),
            MartListModel(martId: 2, martName: "CU"),
            MartListModel(martId: 3, martName: "이마트슈퍼"),
            MartListModel(martId: 4, martName: "홈플러스"),
            MartListModel(martId: 5, martName: "GS25"),
            MartListModel(martId: 6, martName: "이마트")
            ]
    }
}
