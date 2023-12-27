//
//  ContentView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 26.12.2023.
//

import SwiftUI
import SwiftData

struct RootView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var contacts: [Person]
    var persons = DataManager.shared.getPersons()

    var body: some View {
        TabView {
            ContactsView(persons: persons, action: addItem)
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Contacts")
            }
            NumbersView()
            .tabItem {
                Image(systemName: "phone.fill")
                Text("numbers")
            }
        }
    }

    private func addItem() {
//        withAnimation {
//            let newContact = Person(
//                name: <#T##String#>,
//                surname: <#T##String#>,
//                phoneNumber: <#T##String#>,
//                email: <#T##String#>))
//            modelContext.insert(newItem)
//        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(contacts[index])
            }
        }
    }
}

#Preview {
    RootView()
        .modelContainer(for: Person.self, inMemory: true)
}
