//
//  DataStore.swift
//  Lesson-2.11_ContactList
//
//  Created by Юрий Куринной on 27.07.2023.
//

import SwiftUI
import SwiftData

// MARK: - DataManager
final class DataManager {
    
    // MARK: - Public properties
    
    static let shared = DataManager()
    
    // MARK: - Private wrapped properties
    
    @Environment(\.modelContext) private var modelContext
    
    // MARK: - Initializers
    
    private init () {}
    
    // MARK: - Public methods
    
    func getPersons() -> [Person] {
        var contactList: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            contactList.append(
                Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]))
        }
        
        return contactList
    }
    
    private func addPerson(person: Person) {
        withAnimation {
            let newContact = person
            modelContext.insert(newContact)
        }
    }

    private func deletePersons(contacts: [Person], offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(contacts[index])
            }
        }
    }
}
