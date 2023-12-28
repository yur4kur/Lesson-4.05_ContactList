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
    
    // MARK: - Wrapped properties
    
    @Environment(\.modelContext) private var modelContext
    @Query private var contacts: [Person]
    var persons = DataManager.shared.getPersons()
    
    // MARK: Body
    
    var body: some View {
        TabView {
            ContactsView(contacts: persons, action: addItem)
                .tabItem {
                    Image(systemName: Constants.firstTabImage)
                    Text(Constants.firstTabText)
                }
            NumbersView()
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
        .modelContainer(for: Person.self, inMemory: true)
}
 // MARK: - Extensions
extension RootView {
    func addItem(){}
}
