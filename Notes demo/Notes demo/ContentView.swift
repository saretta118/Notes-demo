//
//  ContentView.swift
//  Notes demo
//
//  Created by Sara Flora on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    
    var body: some View {
        
        NavigationStack {
            
            List{
                
                
                Section(content: {
                    ForEach(notes) { note in
                        
                        HStack{
                            VStack{
                                HStack{
                                    Text(note.title)
                                    
                                    
                                    Spacer()
                                }
                                HStack{
                                    Text(note.subtitle).foregroundColor(.gray)
                                    Spacer()
                                }
                            }
                            .background(
                                NavigationLink (
                                    destination: MainTabView(note: note, descriptionText: note.subtitle, noteBody: note.body), label: {
                                        EmptyView()
                                    }
                                ).opacity(0)
                                
                            )
                        }
                   
                        
                        
                        
                        
                    }
                }, header: {
                    Text("Yesterday")
                })
                
                Section(content: {
                    ForEach(notes2) { note in
                        
                        
                        VStack{
                            HStack{
                                Text(note.title)
                                Spacer()
                            }
                            HStack{
                                Text(note.subtitle).foregroundColor(.gray)
                                Spacer()
                            }
                        }
                        .background(
                            NavigationLink (
                                destination: MainTabView(note: note, descriptionText: note.subtitle, noteBody: note.body), label: {
                                    EmptyView()
                                }
                            ).opacity(0)
                        )
                        
                        
                    }
                    
                    
                    
                    
                }, header: {
                    Text("Previous 30 days")
                })
                
                
                
                /*  Section {
                 
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
                 //.foregroundStyle(.black)
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
                 
                 */
                
                
                .frame(alignment: .topTrailing)
            }
            .searchable(text: $searchText, placement: .automatic)
            .frame(alignment: .topTrailing)
            .navigationTitle("Notes")
            .toolbar(content: {
                ToolbarItemGroup(placement: .bottomBar, content: {
                    Spacer()
                    Text("10 notes")
                        .font(.footnote)
                    Spacer()
                    
                    NavigationLink(destination: {
                        NewNoteView()
                        
                    }, label: {
                        Image(systemName: "square.and.pencil")
                      
                        
                    })
                    
                    
                    
                })
            })
        }
        
        
    
        
        
        
        //.listStyle(.plain)
    }
    
}



#Preview {
    ContentView()
}




