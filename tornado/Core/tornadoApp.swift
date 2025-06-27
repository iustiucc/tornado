//
//  tornadoApp.swift
//  tornado
//
//  Created by Ionuț-Daniel Iuștiuc on 27.06.2025.
//

import SwiftUI
import SwiftData

@main
struct tornadoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Message.self, ChatRoom.self])
    }
}
