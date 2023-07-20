//
//  main.swift
//  RandomBingo
//
//  Created by 이민호 on 2023/07/20.
//

//cum 1~100
// my number

import Foundation

var comNum = Int.random(in: 1...100)
print(comNum)

while true {
    if let inputNum = readNumber(){
        if comNum > inputNum {
            print("UP")
            print("")
        } else if comNum < inputNum {
            print("DOWN")
            print("")
        } else {
            print("정답입니다!")
            break
        }
    } else {
        fatalError("유효한 숫자를 입력해주세요.")
    }
}

func readNumber() -> Int? {
    print("1~100까지의 숫자중 하나를 입력해 주세요.")
    guard let inputString = readLine(), let number = Int(inputString), (1...100).contains(number) else {
        fatalError("유효한 숫자를 입력해주세요.")
    }
    
    return number
}


