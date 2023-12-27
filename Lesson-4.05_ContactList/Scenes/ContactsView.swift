//
//  ContactsView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

struct ContactsView: View {
    @Environment(\.modelContext) private var modelContext
    let persons: [Person]
    let action: () -> Void
    //private let action2:  Optional<(IndexSet) -> Void>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons) { person in
                    NavigationLink {
                        Text("\(person.name)")
                    } label: {
                        Text(person.fullName)
                    }
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
    ContactsView(persons: [], action: {})
}
