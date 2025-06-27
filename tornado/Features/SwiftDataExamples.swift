//
//  SwiftDataExamples.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//  Examples showing Swift 6 compatibility fixes
//

import Foundation
import SwiftData

// MARK: - ❌ PROBLEMATIC CODE (Swift 6 incompatible)
/*
@Model
final class ProblematicMessage {
    // These would cause Swift 6 errors:
    // "Accessor macro cannot be applied to 'let' declarations"
    let id: UUID = UUID()
    let content: String
    let timestamp: Date = Date()
    let senderName: String
    let isRead: Bool = false
    
    init(content: String, senderName: String) {
        self.content = content
        self.senderName = senderName
    }
}
*/

// MARK: - ✅ FIXED CODE (Swift 6 compatible)
@Model
final class CorrectMessage {
    // All properties are 'var' to comply with @Model macro requirements
    var id: UUID
    var content: String
    var timestamp: Date
    var senderName: String
    var isRead: Bool
    
    // Computed property maintains immutability design intent
    var formattedTimestamp: String {
        timestamp.formatted(.dateTime.hour().minute())
    }
    
    // Properties can still be logically immutable through API design
    init(content: String, senderName: String, isRead: Bool = false) {
        self.id = UUID()
        self.content = content
        self.timestamp = Date()
        self.senderName = senderName
        self.isRead = isRead
    }
    
    // Method that maintains logical immutability
    func markAsRead() {
        isRead = true
    }
}

// MARK: - Example Usage
extension CorrectMessage {
    static var sampleMessages: [CorrectMessage] {
        [
            CorrectMessage(content: "Hello there!", senderName: "Alice"),
            CorrectMessage(content: "How's it going?", senderName: "Bob"),
            CorrectMessage(content: "Great weather today!", senderName: "Charlie")
        ]
    }
}