//
//  LastModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import Foundation

struct LastModel: Identifiable, Decodable {
    var id: Int { LastId }
    
    let LastId: Int
    let LastName: String
    let LastRate: Float
    let LastReviewCount: String
    let LastTime: String
    let LastTag: [String]
}
        
extension LastModel {
    static func dummy() -> [LastModel] {
        return [
            LastModel(LastId: 1, LastName: "ASAP PIZZA 구로디지...", LastRate: 5.0, LastReviewCount: "(504)", LastTime: "31~46분", LastTag: ["픽업가능"]),
            LastModel(LastId: 1, LastName: "레전드 고기한상", LastRate: 5.0, LastReviewCount: "(504)", LastTime: "31~46분", LastTag: ["픽업가능, 예약가능"]),
            LastModel(LastId: 1, LastName: "파스타예요 영등포...", LastRate: 5.0, LastReviewCount: "(2,851)", LastTime: "31~46분", LastTag: ["소비쿠폰", "픽업가능", "위생인증"]),
            LastModel(LastId: 1, LastName: "제육고집 신림본점", LastRate: 5.0, LastReviewCount: "(2,851)", LastTime: "31~46분", LastTag: ["소비쿠폰", "픽업가능", "위생인증"])
            ]
    }
}

