//
//  ContentView.swift
//  SwiftUI-Intro
//
//  Created by Anastasia Dobrova on 2021-01-19.
//

import SwiftUI

struct ContentView: View {
    var persons = [Person(name: "David", lastName: "Svenson"),
                   Person(name: "An", lastName: "Svenson"),
                   Person(name: "Sus", lastName: "Svenson"),
                   Person(name: "Ti", lastName: "Svenson"),]
    
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            List(persons) { person in PersonView(person: person)
                
            }
            //            VStack(alignment: .leading) {
            //                PersonView(person: persons[3])
            //                PersonView(person: persons[1])
            //            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PersonView: View {
    var person : Person
    var body: some View {
        HStack{
            ZStack {
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(systemName: "person.circle")
            }
            VStack(alignment: .leading) {
                Text(person.name)
                Text(person.lastName)
            }
        }
    }
}
