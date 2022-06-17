//
//  ContentView.swift
//  Choice
//
//  Created by SARAM on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return NavigationView {
            ZStack {
                //Color.white.edgesIgnoringSafeArea(.all)
                VStack {
                //Text("선택길 앱에 오신 것을 환영합니다!")
                    //.lineLimit(nil)
                    //.lineSpacing(50)
        //텍스트의 줄 제한
                    //.multilineTextAlignment(.center)
        //텍스트의 정렬
                    //.foregroundColor(.white)
        //텍스트의 컬러 지정
                    Image("purple")
                        .resizable()
                        .frame(width: 500, height: 500, alignment: .center)

                //Button("시작") {
                    //print("시작합니다.")
                HStack{
                    NavigationLink(
                    //새로운 view와 연결할 때 NavigationLink 필요
                        destination: NextView(),
                    //NextView 라는 새 view로 이동
                       
                        label: {
                            Text("로그인")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 80, height: 80)
                                .background(Color.purple)
                                .clipShape(Circle())
                                .offset(x: -10, y: -50)
                        }
                    )
                    .fixedSize(horizontal: true, vertical: false)
                    .preferredColorScheme(.light)
                    
                    NavigationLink(
                    //새로운 view와 연결할 때 NavigationLink 필요
                        destination: ContentView2(),
                    //NextView 라는 새 view로 이동
                       
                        label: {
                            Text("홈")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 80, height: 80)
                                .background(Color.black)
                                .clipShape(Circle())
                                .offset(x: 10, y: -50)
                            //offset 명령어를 통해 spacer 대신 좌표 이동
                        }
                    )
                    }
                    .fixedSize(horizontal: true, vertical: false)
            } //.background(SwiftUI.Color.white.edgesIgnoringSafeArea(.all))
                    .fixedSize(horizontal: false, vertical: true)
                }
        }
        .colorScheme(.light)
        //colorScheme을 이용해서 강제 라이트/다크모드 사용 가능
        //.background(Color.white)
}
struct NextView: View {
    
    init () {
        //UITableView.appearance().backgroundColor = .white
    }
    @State private var multiselection = Set<UUID>()
    var body: some View {
            TabView {
                /*#-code-walkthrough(ContentView.homeTab)*/
                /*#-code-walkthrough(ContentView.homeTab1)*/
                myself()
                /*#-code-walkthrough(ContentView.homeTab1)*/
                /*#-code-walkthrough(ContentView.tabItem)*/
                    .tabItem {
                        Label("홈", systemImage: "person")
                    }
                /*#-code-walkthrough(ContentView.homeTab)*/
                /*#-code-walkthrough(ContentView.tabItem)*/

                StoryView()
                    .tabItem {
                        Label("사용자", systemImage: "book")
                    }
                
                FavoritesView()
                    .tabItem {
                        Label("내 선택", systemImage: "star")
                    }
            }
            .listStyle(SidebarListStyle())
            .colorScheme(.light)
        }
        }
    }

    struct ContentView2: View {
        
        init () {
            UITableView.appearance().backgroundColor = .white
        }
        @State private var selection = 0
        @State private var name = ""
        @State private var showingAlert = false
        var body: some View {
            VStack{
                //TabView(selection: $selection) {
                Image("whatuwant")
                    .resizable()
                    .frame(width:450 , height: 250, alignment: .center)
                    .offset(x: 0, y: -70)
                //Spacer()
                    Form {
                        TextField("선택지", text : $name)
                            .disableAutocorrection(true)
                            .ignoresSafeArea(.keyboard, edges: .bottom)
                        Text("당신이 원하는 선택은 \(name)")
                        
                        
                    }
                    .offset(x: 0, y: -145)
                        //.tabItem {
                            //Image(systemName: "house.fill")
                            //Text("선택")
                
                Button(action: {
                    self.showingAlert = true
                } ) {
                    Text("제출")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80, height: 80)
                        .background(Color.black)
                        .clipShape(Circle())
                    
                    }
                .offset(x: 0, y: -28)

                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("선택길"), message: Text("그냥 하지 마."), dismissButton: .default(Text("닫기")))
                    

        }
                //.background(Color.white)
                        //.tag(0)
                
                    //Text("두번째 뷰")
                        //.font(.system(size: 30))
                        //.tabItem {
                            //Image(systemName: "bookmark.circle.fill")
                            //Text("선택")
                        //}
                        //.tag(1)
                
                    //Text("세번째 뷰")
                        //.font(.system(size: 30))
                        //.tabItem {
                            //Image(systemName: "video.circle.fill")
                            //Text("친구")
                        //}
                        //.tag(2)
                //}
            //}
        //}
    }
            .colorScheme(.light)
            //.background(Color.white)
}
        //이 아래부터는 친구창
struct Next1View: View {
    var body: some View {
        List {
            //ForEach(FriendSamples) {
                //FriendListView($0.UserName, $0.ImgName, $0.message)
            }
        }
    }
        }
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
}
}

    

