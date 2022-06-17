//
//  FriendList.swift
//  Choice
//
//  Created by SARAM on 2022/05/02.
//

import Foundation

struct Friend {
    var id: UUID = UUID()
    let UserName: String
    let ImgName: String
    var message:String
}
extension Friend: Codable {}
extension Friend: Identifiable{}
extension Friend: Equatable {}

let FriendSamples = [
    Friend(UserName: "테스트", ImgName: "AppIcon", message: "테스트1")
]
