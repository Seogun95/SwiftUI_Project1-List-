//
//  ContentView.swift
//  SwiftUI_List_TUT
//
//  Created by 김선중 on 2021/02/02.
//

import SwiftUI

struct ContentView: View {
    
    let people = Person.all()
    
    var body: some View {
        
        NavigationView {
            List(self.people, id: \.name) { person in
                NavigationLink(destination: Text(person.name)) {
                    Characters(person: person)
                }
            }
            .navigationBarTitle("지브리 스튜디오")
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Characters: View {
    let person: Person
    var body: some View {
        HStack {
            Image(person.imageURL)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            VStack(alignment:.leading) {
                Text("이름 : \(person.name)")
                Text("나이 : \(person.age)세")
                Text("키 : \(String(format: "%.2f", person.height))cm")
            }
        }
    }
}
