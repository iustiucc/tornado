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
                        .foregroundStyle(Color("AccentColor"))
                }
                .padding()
                
                
                Spacer()
                
                Text("Market Name")
                    .font(.headline)
                    .foregroundStyle(Color("Text"))
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "plus")
                        .foregroundStyle(Color("AccentColor"))
                }
                .padding()
            }
            
            ScrollView {
                
                // Content
                }
            
            // Footer
            
            HStack(spacing: 0) {
                
                Spacer()
                
                Text("Total: ")
                    .font(.headline)
                    .foregroundStyle(Color("AccentColor"))

                Text("1000 lei")
                    .foregroundStyle(Color("Text"))
                
                Spacer()
            }
            .padding()
        }
        .background(Color("BackgroundDark"))
    }
}

#Preview {
    ListView()
}
