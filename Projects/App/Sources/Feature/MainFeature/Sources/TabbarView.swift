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
                    Label("Main", systemImage: "house")
                }
                .tag(0) // 태그로 탭 구분
            AddPostView()
                .tabItem {
                    Label("Add Post", systemImage: "plus.circle")
                }
                .tag(1)
            MypageView()
                .tabItem {
                    Label("My Page", systemImage: "person.circle")
                }
                .tag(2)
        }
    }
}

#Preview {
    TapbarView()
}
