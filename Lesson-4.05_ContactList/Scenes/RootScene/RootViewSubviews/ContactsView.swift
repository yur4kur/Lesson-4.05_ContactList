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
    
    let contacts: [Person]
    let action: () -> Void
    //private let action2:  Optional<(IndexSet) -> Void>
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts) { contact in
                    ContactLinkView(contact: contact)
                }
                //.onDelete(perform: action2)
            }
            .listStyle(.plain)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: action) {
                        Label(
                            Constants.addItemLabel,
                            systemImage: Constants.plusButton
                        )
                    }
                }
            }
            
            .navigationTitle(Constants.navTitile)
        }
    }
}

#Preview {
    ContactsView(contacts: [], action: {})
}
