//
//  RootViewModel.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 28.12.2023.
//

import SwiftUI

// MARK: - RootViewModel

final class RootViewModel: ObservableObject {
    
    // MARK: - Public properties
    
    @Published var persons = DataManager.shared.getPersons()
}
