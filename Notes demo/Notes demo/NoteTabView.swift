//
//  NoteTabView.swift
//  Notes demo
//
//  Created by Sara Flora on 20/11/23.
//

import SwiftUI

struct NoteTabView: View {
//    @State var titleText: String
    
    @State var descriptionText: String
    @State var noteBody: String
    @State var noteTitle: String
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                TextEditor(text: $noteTitle)
                    .foregroundColor(Color("NoteTitleColor"))
                    .frame(width: 380,height: 50)
                    .padding(.leading)
                Spacer()
            }
            
            HStack{
                TextEditor(text: $descriptionText)
                    .foregroundColor(.gray)
                    .frame(width: 380,height: 40)
                    .padding(.leading)
                Spacer()
            }
            
            HStack{
                
                TextEditor(text: $noteBody)
                    .foregroundColor(.gray)
                    .frame(width: 380,height: 350)
                    .padding(.leading)
                Spacer()
            }
            
            Spacer()
        }
        
    }
}


