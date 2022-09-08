//
//  BotResponse.swift
//  Choice
//
//  Created by SARAM on 2022/06/19.
//

import Foundation

func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
        if tempMessage.contains("안녕하세요") {
            return "안녕하세요, 저는 당신의 셀렉러즈입니다!"
        } else if tempMessage.contains("안녕") {
            return "안녕하세요, 어떤 선택을 도와드릴까요?"
        } else if tempMessage.contains("안녕!") {
            return "안녕하세요!"
        } else if tempMessage.contains("학교를 갈까 말까") {
            return "그냥 가지 마시는 게 좋을 것 같네요."
        } else if tempMessage.contains("내 이름이 뭐야") {
            return "당신의 프로필 이름은 '플라밍고' 라고 합니다."
        } else if tempMessage.contains("노래 추천해줘") {
            return "장진욱의 '빙글빙글' 을 추천합니다!"
        } else if tempMessage.contains("밥을 먹을까 말까") {
            return "그냥 먹지 마세요."
        } else if tempMessage.contains("점심 메뉴 추천해줘") {
            return "우동 드세요."
        } else if tempMessage.contains("점심메뉴 추천해줘") {
            return "라면 드세요."
        } else if tempMessage.contains("오늘 소주 마실까 소맥 마실까") {
            return "그냥 다 퍼 마시세요."
        } else if tempMessage.contains("소주를 마실까 맥주를 마실까") {
            return "소맥 마시세요."
        } else if tempMessage.contains("사랑해") {
            return "대답할 수 없는 질문입니다."
        } else if tempMessage.contains("어지러운데 어떻게 할까?") {
            return "맥주 한 캔 비우는 건 어떠세요?"
        } else if tempMessage.contains("어지러운데 어떻게 하지?") {
            return "맥주 한 캔 비우는 건 어떠세요?"
        } else if tempMessage.contains("어지러운데 어떡하지?") {
            return "맥주 한 캔 비우는 건 어떠세요?"
        } else if tempMessage.contains("어지러운데 어떡할까?") {
            return "맥주 한 캔 비우는 건 어떠세요?"
        } else if tempMessage.contains("할 게 많은데 쉬고 싶다 어떻게 할까?") {
            return "일단 쉬어야 할 것 같네요, 충분한 휴식은 일의 원동력이 될 거예요."
        } else if tempMessage.contains("할 게 많은데 쉬고싶다 어떻게 할까?") {
            return "일단 쉬어야 할 것 같네요, 충분한 휴식은 일의 원동력이 될 거예요."
        } else if tempMessage.contains("할 게 많은데 쉬고싶다 어떻게 할까") {
            return "일단 쉬어야 할 것 같네요, 충분한 휴식은 일의 원동력이 될 거예요."
        } else if tempMessage.contains("할 게 많은데 쉬고싶다") {
            return "일단 쉬어야 할 것 같네요, 충분한 휴식은 일의 원동력이 될 거예요."
        } else if tempMessage.contains("할 게 많은데 쉬고싶어") {
            return "일단 쉬어야 할 것 같네요, 충분한 휴식은 일의 원동력이 될 거예요."
        } else if tempMessage.contains("너 누구야") {
            return "저는 당신의 셀렉러즈입니다"
        } else if tempMessage.contains("너 누구야?") {
            return "저는 당신의 셀렉러즈입니다"
        } else if tempMessage.contains("누구세요?") {
            return "저는 당신의 셀렉러즈입니다"
        } else if tempMessage.contains("누구세요") {
            return "저는 당신의 셀렉러즈입니다"
        } else if tempMessage.contains("누구세요!") {
            return "저는 당신의 셀렉러즈입니다."
        } else {
            return "접수되었습니다, 답변에 시간이 걸릴 수 있습니다."
}
}
