//
//  DesignModifire.swift
//  DaeSup
//
//  Created by 서지완 on 10/15/24.
//  Copyright © 2024 Mindway-DaeSup. All rights reserved.
//

import Foundation
import SwiftUI

typealias Font = DaeSupFontFamily.Pretendard
typealias Color = DaeSupAsset.Color
// typealias Image =

extension View {
    func daesupFont(_ font: DaeSupFontConvertible, size: CGFloat) -> some View {
        self.font(font.swiftUIFont(size: size))
    }
    // .daesupFont(Font.폰트종류, size: 사이즈)
    func daesupColor(_ color: DaeSupColors) -> some View {
        self.foregroundColor(color.swiftUIColor)
    }
    // .daesupColor(Color.색상종류)
}
