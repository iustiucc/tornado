//
//  ChatView.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        
        VStack(spacing: 0){
            
            // Header
            HStack {
                
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.accentColor)
                }
                .padding()
                
                
                Spacer()
                
                Text("tornado")
                    .font(.headline)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "plus.bubble")
                        .foregroundColor(.accentColor)
                }
                .padding()
            }
            
            ScrollView {
                
            }
            
            // Footer
            HStack {
                
            }
            
        }
    }
}

#Preview {
    ChatView()
}
