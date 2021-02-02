//
//  body.swift
//  SwiftUI_List_TUT
//
//  Created by 김선중 on 2021/02/02.
//

import Foundation

struct Person {
    
    let name: String
    let age: Int
    let imageURL: String
    let height: Double
    let weight: Float
}

extension Person {
    static func all() -> [Person] {
        
        return [
            Person(name: "하울", age: 27, imageURL: "하울", height: 175.543, weight: 72.5),
            Person(name: "소피아", age: 18, imageURL: "소피아", height: 155.232, weight: 43),
            Person(name: "캘시퍼", age: 650, imageURL: "캘시퍼", height: 20, weight: 0),
            Person(name: "포뇨", age: 7, imageURL: "포뇨", height: 120.242, weight: 20),
            Person(name: "소스케", age: 7, imageURL: "소스케", height: 125.532, weight: 30)
        ]
    }
}
