//
//  ContactLinkView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - ContactLabelView

struct ContactLinkView: View {
    
    // MARK: Public properties
    
    let person: Person
    
    // MARK: - Body
    
    var body: some View {
        NavigationLink {
            DetailsView(person: person)
        } label: {
            Text(person.fullName)
        }
    }
}

// MARK: - Preview

#Preview {
    ContactLinkView(person: Person(
        name: Constants.mockName,
        surname: Constants.mockSurname,
        phoneNumber: Constants.mockPhone,
        email: Constants.mockEmail
    ))
}
