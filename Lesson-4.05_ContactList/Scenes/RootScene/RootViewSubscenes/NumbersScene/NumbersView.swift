//
//  RootView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - RootView

struct NumbersView: View {
    
    // MARK: - Public properties
    
    @Binding var persons: [Person]
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons) { person in
                    Section {
                        Label(
                            person.phoneNumber,
                            systemImage: Constants.phoneImage
                        )
                        Label(
                            person.email,
                            systemImage: Constants.trayImage
                        )
                    } header: {
                        Text(person.fullName)
                    }
                }
            }
            .navigationTitle(Constants.numbersTitle)
            .listStyle(.plain)
            .listStyle(GroupedListStyle())
        }
    }
    
}

// MARK: - Preview

#Preview {
    NumbersView(persons: .constant([]))
}
