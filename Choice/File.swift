//
//  File.swift
//  Choice
//
//  Created by SARAM on 2022/04/30.
//

import Foundation
struct ErrorAlertModifier: ViewModifier {
    var isPresented: Binding<Bool>
    let message: String

    func body(content: Content) -> some View {
        content.alert(isPresented: isPresented) {
            Alert(title: Text("Error"),
                  message: Text(message),
                  dismissButton: .cancel(Text("OK")))
        }
    }
}
