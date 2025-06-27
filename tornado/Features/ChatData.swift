//
//  ChatData.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//

import Foundation
import SwiftData

@Model
final class Message {
    // These properties need to be var for Swift 6 compatibility with @Model macro
    var id: UUID
    var content: String
    var timestamp: Date
    var senderName: String
    var isRead: Bool
    
    // Computed property to maintain immutability design intent
    var isRecent: Bool {
        return Date().timeIntervalSince(timestamp) < 3600 // 1 hour
    }
    
    init(content: String, senderName: String, isRead: Bool = false) {
        self.id = UUID()
        self.content = content
        self.timestamp = Date()
        self.senderName = senderName
        self.isRead = isRead
    }
}

@Model
final class ChatRoom {
    var id: UUID
    var name: String
    var createdAt: Date
    var lastActivity: Date
    
    // Relationship with messages
    @Relationship(deleteRule: .cascade)
    var messages: [Message]
    
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.createdAt = Date()
        self.lastActivity = Date()
        self.messages = []
    }
    
    func addMessage(_ message: Message) {
        messages.append(message)
        lastActivity = Date()
    }
}