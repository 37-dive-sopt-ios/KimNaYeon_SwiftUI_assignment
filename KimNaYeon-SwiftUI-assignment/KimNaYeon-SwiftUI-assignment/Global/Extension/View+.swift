//
//  View+.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/6/25.
//

import SwiftUI

extension View {
    func applyBaeminFont(_ style: BaeminFont) -> some View {
        self.modifier(ApplyBaeminFontModifier(style: style))
    }
}
