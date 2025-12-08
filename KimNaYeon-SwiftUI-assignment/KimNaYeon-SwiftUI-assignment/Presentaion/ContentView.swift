//
//  ContentView.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/5/25.
//

import SwiftUI

enum BaeminTabRoute: Int, CaseIterable, Hashable {
    case home, category, recommend, resume

    var title: String {
        switch self {
        case .home:
            return "홈"
        case .category:
            return "카테고리"
        case .recommend:
            return "추천"
        case .resume:
            return "이력서"
        }
    }

    var icon: UIImage {
        switch self {
        case .home:
            return .iconHome
        case .category:
            return .iconCategory
        case .recommend:
            return .iconRecommendation
        case .resume:
            return .iconResume
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
