//
//  ContentView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 26.12.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var contacts: [Person]
    var persons = DataManager.getPersons()

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(persons) { person in
                    NavigationLink {
                        Text("\(person.name)")
                    } label: {
                        Text(
                            person.fullName
                            )
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
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
    ContentView()
        .modelContainer(for: Person.self, inMemory: true)
}
