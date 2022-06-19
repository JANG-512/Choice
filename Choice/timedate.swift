//
//  timedate.swift
//  Choice
//
//  Created by SARAM on 2022/06/19.
//

import Foundation
extension String{
    func stringFromDate() -> String {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = self
        dateFormatter.locale = Locale(identifier: "ko_KR")
        return dateFormatter.string(from: now)
    }
}
