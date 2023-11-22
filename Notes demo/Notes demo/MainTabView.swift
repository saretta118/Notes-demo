//
//  TabView.swift
//  Notes demo
//
//  Created by Sara Flora on 22/11/23.
//

import SwiftUI

struct TabView: View {
    var note: Note
    @State private var selectedTab = 0
    
    var body: some View {
        TabView {
            Text("Hola")
        }
        
    }
}
    

#Preview {
    TabView(note: Note(title: "boh", subtitle: "a", body: "b"))
}
