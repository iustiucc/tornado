//
//  ChatData.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//

import Foundation
import SwiftData

enum MessageReaction: Codable {
    case liked
    case disliked
}

enum AttachmentType: Codable {
    case image
    case document
}

enum MessageSource: Codable {
    case user
    case agent
}

@Model
final class Message {
    var id: UUID
    var content: String
    var source: MessageSource
    var attachmentType: AttachmentType?
    var reaction: MessageReaction?
    
    init(id: UUID = UUID(), content: String, source: MessageSource, attachmentType: AttachmentType? = nil) {
        self.id = id
        self.content = content
        self.source = source
        self.attachmentType = attachmentType
    }
    
    func setReaction(_ reaction: MessageReaction) {
        
        // For managing reaction after the message has been sent
        if source == .agent {
            self.reaction = reaction
        }
    }
}

@Model
final class Conversation {
    @Attribute(.unique) var id: UUID
    var messages: [Message] = []
    var creationDate: Date
    var title: String?
    
    init(id: UUID = UUID(), title: String? = nil) {
        self.id = id
        self.title = title
        self.creationDate = Date()
    }
}
