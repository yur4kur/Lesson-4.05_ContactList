//
//  RootView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - RootView

struct NumbersView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    // MARK: - Body
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - Preview

#Preview {
    NumbersView()
}
