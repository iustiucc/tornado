//
//  ListView.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 28.06.2025.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // Header
            HStack {
                
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.accentColor)
                }
                .padding()
                
                
                Spacer()
                
                Text("Market Name")
                    .font(.headline)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "plus")
                        .foregroundColor(.accentColor)
                }
                .padding()
            }
            
            Spacer()
            
            ScrollView {
                
                // Content
                }
            
            Spacer()
            
            // Footer
            
            HStack {
                
                Text("Total: ")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                
                Text("1000 lei")
                    
            }
        }
    }
}

#Preview {
    ListView()
}
