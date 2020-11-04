//
//  ListOfContactsTableViewController.swift
//  Contacts
//
//  Created by Никита Гвоздиков on 04.11.2020.
//

import UIKit

class ListOfContactsTableViewController: UITableViewController {
    
    
    let contactsList = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactsList[indexPath.row]
        cell.textLabel?.text = contact.fullName
        return cell
    }
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactsInfoVC = segue.destination as? contactsInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactsInfoVC.contact = contactsList[indexPath.row]    
    }
}
