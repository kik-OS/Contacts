//
//  DataManager.swift
//  Contacts
//
//  Created by Никита Гвоздиков on 04.11.2020.
//

class DataManager {
    let names: [String]
    let surnames: [String]
    let phones: [String]
    let emails: [String]
    
    init(names: [String], surnames: [String], phones: [String], emails:[String]) {
        self.names = names
        self.surnames = surnames
        self.phones = phones
        self.emails = emails
    }
    
    static func getDataManager() -> DataManager {
        return
            DataManager(names: ["Noah",
                                "Liam",
                                "Mason",
                                "Jacob",
                                "William",
                                "Ethan",
                                "Michael",
                                "Alexander",
                                "James",
                                "Daniel"].shuffled(),
                        surnames: ["Smith",
                                   "Johnson",
                                   "Williams",
                                   "Brown",
                                   "Jones",
                                   "Miller",
                                   "Davis",
                                   "Garcia",
                                   "Rodriguez",
                                   "Wilson"].shuffled(),
                        phones: ["0865432",
                                 "0645412",
                                 "0865413",
                                 "0865414",
                                 "0865415",
                                 "0865416",
                                 "0865417",
                                 "0865418",
                                 "0863254",
                                 "0865443"].shuffled(),
                        emails: ["lkd@mail.ru",
                                 "fddf@mail.ru",
                                 "adf@mail.ru",
                                 "zxc@mail.ru",
                                 "bnm@mail.ru",
                                 "iop@mail.ru",
                                 "kdj@mail.ru",
                                 "pdo@mail.ru",
                                 "nbh@mail.ru",
                                 "bfq@mail.ru"].shuffled())
    }
}

