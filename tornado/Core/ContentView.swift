//
//  ContentView.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var messages: [Message]
    @Query private var chatRooms: [ChatRoom]
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "message.circle")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Tornado Chat")
                    .font(.title)
                
                if messages.isEmpty {
                    Text("No messages yet")
                        .foregroundStyle(.secondary)
                        .padding()
                } else {
                    List(messages, id: \.id) { message in
                        VStack(alignment: .leading) {
                            Text(message.content)
                                .font(.body)
                            Text("\(message.senderName) • \(message.timestamp.formatted(.dateTime.hour().minute()))")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                
                Button("Add Sample Message") {
                    addSampleMessage()
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .navigationTitle("Chat")
            .padding()
        }
    }
    
    private func addSampleMessage() {
        let message = Message(
            content: "Hello from Tornado Chat! 🌪️",
            senderName: "Demo User"
        )
        modelContext.insert(message)
        
        // Save the context
        do {
            try modelContext.save()
        } catch {
            print("Failed to save message: \(error)")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Message.self, ChatRoom.self], inMemory: true)
}
