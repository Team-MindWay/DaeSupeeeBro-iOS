//
//  TapbarView.swift
//  DaeSup
//
//  Created by 박정우 on 10/24/24.
//  Copyright © 2024 Mindway-DaeSup. All rights reserved.
//

import SwiftUI

struct TapbarView: View {
    @State private var selection = 0 // 선택된 탭을 관리하는 변수
    var body: some View {
            TabView(selection: $selection) {
                MainView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(0) // 태그로 탭 구분
                AddPostView()
                    .tabItem {
                        Image(systemName: "pencil")
                    }
                    .tag(1)
                MyPageView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                    }
                    .tag(2)
        }
        .accentColor(.green)
    }
}

#Preview {
    TapbarView()
}
