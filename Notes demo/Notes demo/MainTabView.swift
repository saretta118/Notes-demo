//
//  TabView.swift
//  Notes demo
//
//  Created by Sara Flora on 22/11/23.
//

import SwiftUI

struct MainTabView: View {
    var note: Note
    @State private var selectedTab = 0
    var descriptionText: String
    
    var noteBody: String
    
    
    var body: some View {
            TabView {
                NoteTabView(descriptionText: descriptionText,noteBody: noteBody, noteTitle: note.title)
                    .tabItem {
                        Image(systemName: "checklist")
                }
                
                NoteTabView(descriptionText: descriptionText,noteBody: noteBody, noteTitle: note.title)
                          .tabItem {
                              Image(systemName: "camera")
                                  
                          }
                      
                NoteTabView(descriptionText: descriptionText,noteBody: noteBody, noteTitle: note.title)
                          .tabItem {
                              Image(systemName: "pencil.tip.crop.circle")
                          }
                  
                NoteTabView(descriptionText: descriptionText,noteBody: noteBody, noteTitle: note.title)
                          .tabItem {
                              Image(systemName: "square.and.pencil")
                          }
                
                
            }
        }
}
    

#Preview {
    MainTabView(note: Note(title: "", subtitle: "", body: ""), descriptionText: "",noteBody: "")
}
