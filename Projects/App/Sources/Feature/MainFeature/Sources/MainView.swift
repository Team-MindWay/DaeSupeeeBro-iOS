import SwiftUI

struct MainView: View {
    @State private var recommend: Bool = false
    @State private var popular: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 120) {
                HStack {
                    Text("대숲이형")
                        .daesupFont(Font.extraBold, size: 24)
                        .daesupColor(Color.mainColor)
                    Image("MainPageLogo")
                        .frame(width: 20, height: 20)
                }
                HStack {
                    Button {
                        //찾기 액션
                    } label: {
                        Image("Search")
                            .frame(width: 30, height: 30)
                            .padding(20)
                    }
                    Button {
                        //알림 액션
                    } label: {
                        Image("Bell")
                            .frame(width: 30, height: 30)
                    }
                }
            }
            .padding(.top, 40)
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Divider()
                    HStack(spacing: 0) {
                        Text("익명1")
                            .daesupFont(Font.bold, size: 20)
                            .daesupColor(Color.mainColor)
                            .padding(.top, 20)
                        Text("님을 위한 ")
                            .daesupFont(Font.bold, size: 20)
                            .padding(.top, 20)
                        Text("추천")
                            .daesupFont(Font.bold, size: 20)
                            .daesupColor(Color.mainColor)
                            .padding(.top, 20)
                        Text("콘텐츠")
                            .daesupFont(Font.bold, size: 20)
                            .padding(.top, 20)
                    }
                    .padding(.trailing, 140)
                    
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(1..<10) { index in
                                    VStack(alignment: .leading, spacing: 10) {
                                        HStack(spacing: 30){
                                            Text("어제 내 세상이 무너졌어") //게시물 제목
                                                .daesupFont(Font.bold, size: 20)
                                            Text("AI과 1짱") //별명
                                                .daesupFont(Font.regular, size: 14)
                                        }
                                        HStack(alignment: .bottom){
                                            Text("내용 내용 내용 내용 김박최수연 김박최수연 김박최수연 제로산소 제로산소 제로산소 제로산소제로산소 제로산소 제로산소 제로산소adfaasdfasdfasdfasfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf") //개시물 내용
                                                .daesupFont(Font.regular, size: 16)
                                                .frame(width: 200, height: 130)
                                            Button {
                                                recommend.toggle()
                                            } label: {
                                                HStack(spacing: 5){
                                                    Image(recommend ? "BlackHeart" : "RedHeart")
                                                        .resizable()
                                                        .frame(width: 15, height: 15) // 좋아요를 누르면 이미지가 변경됨
                                                    Text("14") // 좋아요 개수
                                                        .foregroundColor(.black)
                                                }
                                            }
                                            .padding(.leading,20)
                                            .padding(.bottom,10)
                                        }
                                    }
                                    .padding(.top, 14)
                                    .frame(width: 300, height: 207)
                                    .background(
                                        Rectangle()
                                            .fill(.white)
                                            .cornerRadius(10)
                                            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
                                    )
                                    .padding(.top, 20)
                                    .padding(.bottom, 20) // 그림자
                                }
                            }
                            .padding(.horizontal, 40)
                        }
                        
                        .frame(maxWidth: .infinity)
                        HStack(spacing: 0) {
                            Text("오늘의 ")
                                .daesupFont(Font.bold, size: 20)
                            Text("인기 ")
                                .daesupFont(Font.bold, size: 20)
                                .daesupColor(Color.mainColor)
                            Text("콘텐츠")
                                .daesupFont(Font.bold, size: 20)
                        }
                        .padding(.top, 20)
                        .padding(.trailing, 200)
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(1..<10) { index in
                                        VStack(alignment: .leading, spacing: 10) {
                                            HStack(spacing: 30){
                                                Text("어제 내 세상이 무너졌어")
                                                    .daesupFont(Font.bold, size: 20)
                                                Text("AI과 1짱")
                                                    .daesupFont(Font.regular, size: 14)
                                            }
                                            HStack(alignment: .bottom){
                                                Text("내용 내용 내용 내용 김박최수연 김박최수연 김박최수연 제로산소 제로산소 제로산소 제로산소제로산소 제로산소 제로산소 제로산소adfaasdfasdfasdfasfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf")
                                                    .daesupFont(Font.regular, size: 16)
                                                    .frame(width: 200, height: 130)
                                                Button {
                                                    popular.toggle()
                                                } label: {
                                                    HStack(spacing: 5){
                                                        Image(popular ? "BlackHeart" : "RedHeart")
                                                            .resizable()
                                                            .frame(width: 15, height: 15) // 좋아요를 누르면 이미지가 변경됨
                                                        Text("67") // 좋아요 개수
                                                            .foregroundColor(.black)
                                                    }
                                                }
                                                .padding(.leading,20)
                                                .padding(.bottom,10)
                                            }
                                        }
                                        .padding(.top, 14)
                                        .frame(width: 300, height: 207)
                                        .background(
                                            Rectangle()
                                                .fill(.white)
                                                .cornerRadius(10)
                                                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
                                        )
                                        .padding(.top, 20)
                                        .padding(.bottom, 20) // 그림자
                                    }
                                }
                                .padding(.horizontal, 40)
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                }
                .padding(.bottom, 90)
            }
        }
    }
}

#Preview {
    MainView()
}
