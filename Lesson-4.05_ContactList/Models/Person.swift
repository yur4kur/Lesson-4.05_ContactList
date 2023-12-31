//
//  Person.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 28.12.2023.
//

import Foundation

// MARK: - Person

struct Person: Identifiable {
    
    // MARK: - Public properties
    
    let id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }

    // MARK: - Initializers
    
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
    }
}
