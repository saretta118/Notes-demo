//
//  NewNoteView.swift
//  Notes demo
//
//  Created by Sara Flora on 22/11/23.
//

import SwiftUI

struct NewNoteView: View {
    var body: some View {
        
            TabView {
                VStack{
                    
                    HStack{
                        
                        TextEditor(text: .constant("New note"))
                            .frame(width: 380,height: 50)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    HStack{
                        TextEditor(text: .constant(""))
                            .foregroundColor(.gray)
                            .frame(width: 380,height: 40)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    HStack{
                        
                        TextEditor(text: .constant(""))
                            .foregroundColor(.gray)
                            .frame(width: 380,height: 350)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    Spacer()
                }
                    .tabItem {
                        Image(systemName: "checklist")
                }
                
                        Text("Nota")
                          .tabItem {
                              Image(systemName: "camera")
                                  
                          }
                      
                        Text("Nota")
                          .tabItem {
                              Image(systemName: "pencil.tip.crop.circle")
                          }
                  
                        Text("Nota")
                          .tabItem {
                              Image(systemName: "square.and.pencil")
                          }
                
                
            }
        }
}

#Preview {
    NewNoteView()
}
