//
//  ChatView.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//

import SwiftUI

struct ChatView: View {
    
    @State private var messageText = ""

    var body: some View {
        
        VStack(spacing: 0){
            
            // Header
            HStack {
                
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(Color("AccentColor"))
                }
                .padding()
                
                
                Spacer()
                
                Text("tornado")
                    .font(.headline)
                    .foregroundStyle(Color("Text"))
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "plus.bubble")
                        .foregroundStyle(Color("AccentColor"))
                }
                .padding()
            }
            .background(Color("BackgroundDark"))
            
            ScrollView {
                
            }
            .background(Color("BackgroundDark"))
            
            // Footer
            HStack {
                
                Button(action: {}) {
                    Image(systemName: "plus")
                        .padding()
                        .foregroundStyle(Color("AccentColor"))
                }
                
                TextField("Type a message...", text: $messageText)
                    .padding()
                    .foregroundStyle(Color("Text"))
                
                Button(action: {}) {
                    Image(systemName: "microphone")
                        .imageScale(.large)
                        .padding()
                        .foregroundStyle(Color("AccentColor"))
                }
                
            }
            .background(Color("BackgroundLight"))
        }
    }
}

#Preview {
    ChatView()
}
