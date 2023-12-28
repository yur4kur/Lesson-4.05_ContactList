//
//  DetailsView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - DetailsView

struct DetailsView: View {
    
    // MARK: - Public properties
    let person: Person
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    PersonImageView()
                    Spacer()
                }
                Label(person.phoneNumber, systemImage: Constants.phoneImage)
                Label(person.email, systemImage: Constants.trayImage)
            }
            .navigationTitle(person.fullName)
        }
    }
}

// MARK: - Preview

#Preview {
    DetailsView(person: Person(
        name: Constants.mockName,
        surname: Constants.mockSurname,
        phoneNumber: Constants.mockPhone,
        email: Constants.mockEmail
    ))
}
