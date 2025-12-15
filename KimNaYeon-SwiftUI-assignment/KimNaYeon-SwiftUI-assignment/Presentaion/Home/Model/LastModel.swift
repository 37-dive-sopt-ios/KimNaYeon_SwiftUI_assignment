//
//  LastModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import Foundation

struct LastModel: Identifiable, Decodable {
    var id: Int { lastId }
    
    let lastId: Int
    let lastName: String
    let lastRate: String
    let lastReviewCount: String
    let lastTime: String
    let lastTag: [String]
}
        
extension LastModel {
    static func dummy() -> [LastModel] {
        return [
            LastModel(lastId: 1, lastName: "ASAP PIZZA 구로디지...", lastRate: "5.0", lastReviewCount: "(5)", lastTime: "31~46분", lastTag: ["픽업가능"]),
            LastModel(lastId: 2, lastName: "레전드 고기한상", lastRate: "5.0", lastReviewCount: "(504)", lastTime: "31~46분", lastTag: ["픽업가능", "예약가능"]),
            LastModel(lastId: 3, lastName: "파스타예요 영등포...", lastRate: "5.0", lastReviewCount: "(2,851)", lastTime: "31~46분", lastTag: ["소비쿠폰", "픽업가능"]),
            LastModel(lastId: 4, lastName: "제육고집 신림본점", lastRate: "5.0", lastReviewCount: "(2,851)", lastTime: "31~46분", lastTag: ["소비쿠폰", "픽업가능"])
            ]
    }
}

