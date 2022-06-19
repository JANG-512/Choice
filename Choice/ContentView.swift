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
        @State private var messageText = ""
        @State var messages: [String] = ["어떤 선택을 도와드릴까요?"]
        //인트로 메시지
        var body: some View {
            VStack {
                HStack {
                    //Text("선택길")
                        //.font(.largeTitle)
                        //.bold()
                }
                
                ScrollView {
                    ForEach(messages, id: \.self) { message in
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            //USER 메시지 말풍선 파트, 사용자명은 변경가능
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.purple.opacity(100))
                                    .cornerRadius(20)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        } else {
                            HStack {
                                Text(message)
                                    .padding()
                                    .background(.gray.opacity(0.15))
                                    .cornerRadius(20)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                        }
                    }.rotationEffect(.degrees(180))
                }.rotationEffect(.degrees(180))
                    .background(Color.gray.opacity(0.10))
                
                HStack {
                    TextField("여기에 질문을 입력하세요", text: $messageText)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .onSubmit {
                            sendMessage(message: messageText)
                        }
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Text("전송").font(.system(size: 20, weight: .black))
                        //Image(systemName: "paperplane.fill")
                            .frame(width: 60, height: 40)
                            .background(Color.purple.opacity(100))
                            .foregroundColor(.white)
                            //.padding(.horizontal, 10)
                            .cornerRadius(20)
                        
                    }
                    .font(.system(size: 26))
                    .padding(.horizontal, 10)
                }
                .padding()
            }
            .colorScheme(.light)
        } 
        func sendMessage(message: String) {
            withAnimation {
                messages.append("[USER]" + message)
                //사용자명+'메시지 내용' 표시
                self.messageText = ""
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    messages.append(getBotResponse(message: message))
                    //BotResponse.swift 에서 알맞는 답변 전송
                }
        }
            
            
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

    

            

