//
//  MemberListManager.swift
//  MemberList
//
//  Created by 이민호 on 2023/08/07.
//

import Foundation

final class MemberListManager {
    private var memberList: [Member] = []
    
    func makeMemberListDatas() {
        memberList = [
            Member(name: "홍길동", age: 20, phone: "010-1111-2222", address: "서울"),
            Member(name: "임꺽정", age: 23, phone: "010-2222-3333", address: "서울"),
        ]
    }
    
    func getMemberList() -> [Member] {
        return memberList
    }
    
    func makeNewMemeber(_ member: Member) {
        memberList.append(member)
    }
    
    func updateMemberInfo(index: Int, _ member: Member) {
        memberList[index] = member
    }
}
