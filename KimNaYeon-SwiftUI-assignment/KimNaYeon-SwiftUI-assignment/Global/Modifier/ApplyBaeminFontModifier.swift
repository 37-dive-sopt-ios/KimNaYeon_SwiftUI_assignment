//
//  ApplyCertiFontModifier.swift
//  KimNaYeon-SwiftUI-assignment
//
//  Created by 김나연 on 12/6/25.
//


import SwiftUI

struct ApplyBaeminFontModifier: ViewModifier {
    let style: BaeminFont

    func body(content: Content) -> some View {
        content
            .font(style.font)
            .tracking(style.letterSpacing * style.fontSize)
    }
}
