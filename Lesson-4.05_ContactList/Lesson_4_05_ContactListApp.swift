//
//  Lesson_4_05_ContactListApp.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 26.12.2023.
//

import SwiftUI
import SwiftData

@main
struct Lesson_4_05_ContactListApp: App {
    
    // MARK: - SwiftData Container
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([Contact.self])
        let modelConfiguration = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false
        )

        do {
            return try ModelContainer(
                for: schema,
                configurations: [modelConfiguration]
            )
        } catch {
            fatalError("\(Constants.containerError) \(error)")
        }
    }()

    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(sharedModelContainer)
    }
}
