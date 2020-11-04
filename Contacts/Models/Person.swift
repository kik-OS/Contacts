//
//  Person.swift
//  Contacts
//
//  Created by Никита Гвоздиков on 04.11.2020.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    var fullName: String {
        name + " " + surname
    }
    
 

    
    static func getRandomPersons() -> [Person] {

        let data = DataManager.getDataManager()
        var persons : [Person] = []
        for i in 0..<data.names.count {
            persons.append(Person(name: data.names[i],
                                  surname: data.surnames[i],
                                  phoneNumber: data.phones[i],
                                  email: data.emails[i]))
        }
        return persons
    }
}
