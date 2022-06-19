//
//  StoryView.swift
//  Choice
//
//  Created by SARAM on 2022/05/20.
//

import SwiftUI

struct StoryView: View {
    /*#-code-walkthrough(HomeView)*/
    
    var body: some View {
        ZStack {
            List {
                Section (
                    header: Text("사용자 목록"),
                    footer: Text("현재 접속 중인 사용자 목록입니다.")
                ) {
                    Text("플라밍고")
                    Text("익룡")
                    Text("TEST1")
                    Text("TEST2")
                }
                Section (
                    header: Text("셀렉러즈"),
                    footer: HStack { Spacer(); Text("현재 접속 중인 셀렉러즈입니다.") }
        
                ) {
                    Text("Little_SPACE_AD")
                    
                        .navigationTitle("환영합니다.")
                }
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
