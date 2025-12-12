//
//  OneDishListModel.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//

import Foundation

struct OneDishListModel: Identifiable, Decodable {
    var id: Int { dishId }
    
    let dishId: Int
    let dishName: String
    let dishRank: Float
    let dishShopName: String
    let dishReviewCount: String
    let dishDiscount: String
    let dishWon: String
    let dishNotNowWon: String
}
        
extension OneDishListModel {
    static func dummy() -> [OneDishListModel] {
        return [
            OneDishListModel(dishId: 1, dishName: "[든든한 한끼] 보쌈 막국수", dishRank: 5.0, dishShopName: "백억보쌈제육...", dishReviewCount: "(1,973)", dishDiscount: "25%", dishWon: "12,000원", dishNotNowWon: "16,000원"),
            OneDishListModel(dishId: 2, dishName: "(1인)피자 + 사이드 Set", dishRank: 4.5, dishShopName: "백억보쌈제육...", dishReviewCount: "(1,973)", dishDiscount: "25%", dishWon: "12,000원", dishNotNowWon: "16,000원"),
            OneDishListModel(dishId: 3, dishName: "냠냠냠", dishRank: 5.0, dishShopName: "백억보쌈제육...", dishReviewCount: "(1,273)", dishDiscount: "25%", dishWon: "12,000원", dishNotNowWon: "16,000원"),
            OneDishListModel(dishId: 4, dishName: "어쩌구저쩌구", dishRank: 5.0, dishShopName: "백억보쌈제육...", dishReviewCount: "(1,973)", dishDiscount: "25%", dishWon: "12,000원", dishNotNowWon: "16,000원")
            ]
    }
}

