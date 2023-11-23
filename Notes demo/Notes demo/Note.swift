//
//  Note.swift
//  Notes demo
//
//  Created by Sara Flora on 20/11/23.
//

import Foundation


struct Note: Identifiable {
    var id = UUID()
    
    var title: String
    var subtitle: String
    var body: String
}

var notes: [Note] = [
    Note(title: "Note1", subtitle: "one", body: "Apple Dev Academy1"),
    Note(title: "Note2", subtitle: "two", body: "Apple Dev Academy2"),
    Note(title: "Note3", subtitle: "three", body: "Apple Dev Academy3"),
    Note(title: "Note4", subtitle: "four", body: "Apple Dev Academy4")
]

var notes2: [Note] = [
    Note(title: "Note5", subtitle: "five", body: "Apple Dev Academy5"),
    Note(title: "Note6", subtitle: "six", body: "Apple Dev Academy6"),
    Note(title: "Note7", subtitle: "seven", body: "Apple Dev Academy7"),
    Note(title: "Note8", subtitle: "eight", body: "Apple Dev Academy8"),
    Note(title: "Note9", subtitle: "nine", body: "Apple Dev Academy9"),
    Note(title: "Note10", subtitle: "ten", body: "Apple Dev Academy10")
]
