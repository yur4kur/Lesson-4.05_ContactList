//
//  ContactsView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - ContactsView

struct ContactsView: View {
   
    // MARK: - Public properties
    
    @Binding var persons: [Person]
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons) { contact in
                    ContactLinkView(person: contact)
                }
            }
            .listStyle(.plain)
            .navigationTitle(Constants.contactsTitle)
        }
    }
}

// MARK: - Preview

#Preview {
    ContactsView(persons: .constant([]))
}
