//
//  ChatView.swift - Zona de input îmbunătățită
//  tornado
//

import SwiftUI

struct ChatView: View {
    
    @State private var messageText = ""
    @FocusState private var isTextFieldFocused: Bool

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
            
            ScrollView {
                
            }
        }
        .safeAreaInset(edge: .bottom) {
            // Footer
            HStack {
                
                Button(action: {
                    // Action
                }) {
                    Image(systemName: "plus")
                        .foregroundStyle(Color("AccentColor"))
                }
                .padding()
                
                TextField("Type a message...", text: $messageText, axis: .vertical)
                    .focused($isTextFieldFocused)
                    .lineLimit(1...4)
                    .foregroundStyle(Color("Text"))
                    .background(.clear)
                    .padding()
                    .onSubmit {
                        // sendMessage()
                    }
                
                // Send/Voice button
                Button(action: {
                    if !messageText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                        // sendMessage()
                    } else {
                        // startVoiceRecording()
                    }
                }) {
                    Image(systemName: messageText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "microphone" : "paperplane")
                        .foregroundStyle(Color("AccentColor"))
                        .imageScale(.large)
                        .padding()
                }
                
            }
            .background(Color("BackgroundLight"))
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .background(Color("BackgroundDark"))
    }
}

#Preview {
    ChatView()
}
