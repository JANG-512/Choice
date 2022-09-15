//
//  FavoritesView.swift
//  Choice
//
//  Created by SARAM on 2022/05/20.
//

import SwiftUI

struct FavoritesView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("여기를 눌러주세요") {
            self.showingAlert.toggle()
        }
        .foregroundColor(.white)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(50)
        .font(.system(size: 20))
        
        .alert(isPresented: $showingAlert) {
            let firstButton = Alert.Button.default(Text("이걸 누르네")) {
                print("primary button pressed")
            }
            let secondButton = Alert.Button.cancel(Text("덜덜")) {
                print("secondary button pressed")
            }
            return Alert(title: Text("정말 누르셨네요"), message: Text("감사합니다"), primaryButton: firstButton, secondaryButton: secondButton)
        }
    }
    
    
    struct FavoritesView_Previews: PreviewProvider {
        static var previews: some View {
            FavoritesView()
        }
    }
}
