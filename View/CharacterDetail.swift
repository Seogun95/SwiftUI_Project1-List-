//
//  CharacterDetail.swift
//  SwiftUI_List_TUT
//
//  Created by 김선중 on 2021/02/02.
//

import SwiftUI

struct CharacterDetail: View {
    
    let person: Person
    
    var body: some View {
        VStack(alignment: .center) {
            Image(person.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 340)
                .cornerRadius(30)
            
            VStack {
                HStack {
                    Image(systemName: "star.square.fill")
                        .font(.title)
                    Text("캐릭터 정보")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                }
                VStack(alignment: .leading) {
                    
                    Text("이름 : \(person.name)")
                    Text("나이 : \(person.age)세")
                    Text("키 : \(String(format: "%.1f", person.height))cm")
                    Text("몸무게 : \(String(format: "%.1f", person.weight))kg")
                    
                } .padding(.leading, 30)
                .font(.system(size: 23))
            }
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(person: Person(name: "하울", age: 26, imageURL: "하울", height: 180.543, weight: 72.5))
    }
}
