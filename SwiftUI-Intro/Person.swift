//
//  Person.swift
//  SwiftUI-Intro
//
//  Created by Anastasia Dobrova on 2021-01-19.
//

import Foundation

struct Person : Identifiable {
    var id = UUID()
    var name : String
    var lastName : String
}
