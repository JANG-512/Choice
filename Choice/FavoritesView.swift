//
//  FavoritesView.swift
//  Choice
//
//  Created by SARAM on 2022/05/20.
//

import SwiftUI

struct FavoritesView: View {
    
    @State private var someToggle = true
    
    var body: some View {
        VStack{
        Text("현재 개발 중인 화면입")
        Toggle("확인", isOn: $someToggle)
        
        if someToggle {
            Text("확인 완료")
        } else {
            Text("미확인")
            }
        }
    }
    
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
