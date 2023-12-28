//
//  ContentView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 26.12.2023.
//

import SwiftUI
import SwiftData

// MARK: - RootView

struct RootView: View {
    
    // MARK: - Private properties
    
    @StateObject private var rootViewVodel = RootViewModel()
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ContactsView(persons: $rootViewVodel.persons)
                .tabItem {
                    Image(systemName: Constants.firstTabImage)
                    Text(Constants.firstTabText)
                }
            NumbersView(persons: $rootViewVodel.persons)
                .tabItem {
                    Image(systemName: Constants.secondTabImage)
                    Text(Constants.secondTabText)
                }
        }
    }
}

// MARK:  - Preview

#Preview {
    RootView()
        .modelContainer(for: Contact.self, inMemory: true)
}

