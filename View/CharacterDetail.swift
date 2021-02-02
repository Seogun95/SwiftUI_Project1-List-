//
//  CharacterDetail.swift
//  SwiftUI_List_TUT
//
//  Created by 김선중 on 2021/02/02.
//

import SwiftUI

struct CharacterDetail: View {
    
    let person: Person
    @State private var zoomed: Bool = false
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack(alignment: .center) {
            Image(person.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 340, height: 340)
                //zoomed가 true이면 170, false이면 10
                .cornerRadius(self.zoomed ? 170 : 10)
                //클릭시 주는 효과
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 100, damping: 50)) {
                        self.zoomed.toggle()
                        self.animationAmount += 360
                    }
                }
                .rotation3DEffect(
                    .degrees(animationAmount),
                    axis: (x: 0.0, y: 1.0, z: 0.0))
            
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
         //네비게이션타이틀을 사용할때 (person.name)을 사용하려면 항상 text매개변수가 와야한다.
        .navigationBarTitle("지브리 스튜디오 '\(person.name)'",displayMode: .inline)
    } 
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(person: Person(name: "하울", age: 26, imageURL: "하울", height: 180.543, weight: 72.5))
    }
}
