//
//  BaeminFont.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/6/25.
//


import SwiftUI

enum BaeminFont {
    case head_b_24
    case head_b_18
    case head_b_16
    case head_b_14

    case title_sb_18
    case title_sb_10

    case body_r_14
    case body_r_10

    var font: Font {
        switch self {
        case .head_b_24:
            return .custom("Pretendard-Bold", size: 24)
        case .head_b_18:
            return .custom("Pretendard-Bold", size: 18)
        case .head_b_16:
            return .custom("Pretendard-Bold", size: 16)
        case .head_b_14:
            return .custom("Pretendard-Bold", size: 14)

        case .title_sb_18:
            return .custom("Pretendard-SemiBold", size: 18)
        case .title_sb_10:
            return .custom("Pretendard-SemiBold", size: 10)
            
        case .body_r_14:
            return .custom("Pretendard-Regular", size: 14)
        case .body_r_10:
            return .custom("Pretendard-Regular", size: 10)
        }
    }

    var letterSpacing: CGFloat {
        switch self {
        case .head_b_24, .head_b_18, .head_b_16:
            return -0.02
        case .title_sb_18:
            return -0.03
        case .title_sb_10:
            return -0.06
        case .head_b_14, .body_r_14, .body_r_10:
            return -0.04
        }
    }

    var fontSize: CGFloat {
        switch self {
        case .head_b_24:
            return 24
        case .head_b_18, .title_sb_18:
            return 18
        case .head_b_16:
            return 16
        case .head_b_14, .body_r_14:
            return 14
        case .title_sb_10, .body_r_10:
            return 10
        }
    }
}
