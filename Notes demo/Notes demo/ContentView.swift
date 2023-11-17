//
//  ContentView.swift
//  Notes demo
//
//  Created by Sara Flora on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        
        NavigationStack{
            List{
                 
                
                Section {
                  
                        
                    NoteTabView(titleText: "Note 1", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    
                    
                    
                    NoteTabView(titleText: "Note 2", descriptionText: "description").background(
                        NavigationLink("Note2", destination: Text("Destino Nota 2")).opacity(0)
                    )
                    
                    NoteTabView(titleText: "Note 3", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    NoteTabView(titleText: "Napoli", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    
                } header: {
                    Text("Yesterday")
                        .foregroundStyle(.black)
                }
                
                Section {
                    NoteTabView(titleText: "Work", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    NoteTabView(titleText: "Study", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    NoteTabView(titleText: "Money", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    NoteTabView(titleText: "Thoughts", descriptionText: "description").background(
                        NavigationLink("", destination: Text("Aqui")).opacity(0)
                    )
                    
                    
                } header: {
                    Text("Previous 30 days")
                }
                .frame(alignment: .topTrailing)
            }
            .frame(alignment: .topTrailing)
            .navigationTitle("Notes")
            
            
        }
        //.listStyle(.plain)
    }
        
}

struct NoteTabView: View {
    var titleText: String
    var descriptionText: String
    
    var body: some View {
        VStack(alignment: .leading){
                Text(titleText)
                    .bold()
                Text(descriptionText)
                    .foregroundColor(.gray)
                
            }
    }
}

#Preview {
    ContentView()
}
