//
//  DataStore.swift
//  Lesson-2.11_ContactList
//
//  Created by Юрий Куринной on 27.07.2023.
//

// MARK: - DataManager
final class DataManager {
    
    // MARK: Singleton property
    static let shared = DataManager()
    
    // MARK: - Private properties
    
    // MARK: Names
    private let names = [
        "Leanne",
        "Ervin",
        "Clementine",
        "Patricia",
        "Chelsey",
        "Dennis",
        "Kurtis",
        "Nicholas",
        "Glenna",
        "Clementina"]
    
    // MARK: Surnames
    private let surnames = [
        "DuBuque",
        "Reichert",
        "Runolfsdottir",
        "Weissnat",
        "Schulist",
        "Dietrich",
        "Lebsack",
        "Bauch",
        "Howell",
        "Graham"]
    
    // MARK: Phone numbers
    private let phoneNumbers = [
        "1-770-736-8031",
        "010-692-6593",
        "1-463-123-4447",
        "1-493-170-9623",
        "44(254)954-1289",
        "1-477-935-8478",
        "1-210-067-6132",
        "1-586-493-6943",
        "44(775)976-6794",
        "1-024-648-3804"]
    
    // MARK: Emails
    private let emails = [
        "Rey.Padberg@karina.biz",
        "Chaim_McDermott@dana.io",
        "Sherwood@rosamond.me",
        "Telly.Hoeger@billy.biz",
        "Karley_Dach@jasper.info",
        "Lucio_Hettinger@annie.ca",
        "Julianne.OConner@kory.org",
        "Nathan@yesenia.net",
        "Shanna@melissa.tv",
        "Sincere@april.biz"]
    
    // MARK: - Initializers
    
    private init () {}
    
    // MARK: - Public methods
    
    static func getPersons() -> [Person] {
        var contactList: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
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
}
