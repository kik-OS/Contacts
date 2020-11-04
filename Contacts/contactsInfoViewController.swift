//
//  contactsInfoViewController.swift
//  Contacts
//
//  Created by Никита Гвоздиков on 04.11.2020.
//

import UIKit

class contactsInfoViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "phone number: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
        title = contact.fullName
        
      
    }
    

    

}
