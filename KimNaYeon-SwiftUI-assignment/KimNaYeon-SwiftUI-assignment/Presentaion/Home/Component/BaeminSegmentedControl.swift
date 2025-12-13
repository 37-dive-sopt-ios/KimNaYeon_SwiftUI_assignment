//
//  BaeminSegmentedControl.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/12/25.
//


import SwiftUI

enum BaeminCategory: String, CaseIterable, Identifiable {
    case delivery = "음식배달"
    case pickup = "픽업"
    case shopping = "장보기·쇼핑"
    case gift = "선물하기"
    case allGoodThings = "혜택모아보기"

    var id: String { self.rawValue }

    var description: String {
        return self.rawValue
    }
}

struct BaeminSegmentedControl: View {
    
    @Binding var selectedCategory: BaeminCategory
    @Namespace private var underlineNamespace
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(BaeminCategory.allCases) { category in
                    VStack(alignment: .center, spacing: 0) {
                        Button {
                            selectedCategory = category
                        } label: {
                            Text(category.description)
                                .applyBaeminFont(.head_b_18)
                                .frame(height: 43)
                                .foregroundStyle(selectedCategory == category ? .baeminBlack : .baeminGray300)
                        }
                        
                        if selectedCategory == category {
                            Rectangle()
                                .foregroundStyle(.baeminBlack)
                                .matchedGeometryEffect(id: "underline", in: underlineNamespace)
                                .frame(height: 3)
                        } else {
                            Color.clear.frame(height: 3)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
        }
        .scrollIndicators(.hidden)
    }
}
