//
//  ContactList.swift
//  Contacts
//
//  Created by Erzhena Mironova on 18/10/2018.
//  Copyright © 2018 Erzhena Mironova. All rights reserved.
//

class ContactList {
    
    static let shared = ContactList()
    
    private var contacts : [Contact] = [
        Contact(name: "Alfredo", surname: "Pinfildi", number: "3391274900"),
        Contact(name: "Paolo Roberto", surname: "Punzo", number: "3337009548"),
        Contact(name: "Vincenzo", surname: "Di Fiore", number: "3393621797"),
        Contact(name: "Davide", surname: "Marfella", number: "3394206583"),
        Contact(name: "Guido", surname: "Buonovino", number: "3386464597"),
        Contact(name: "Erzhena", surname: "Mironova", number: "113123239")
    ]
    
    func getList() -> [Contact]{
        contacts.sort(by: {$0.name < $1.name})
        return contacts
    }
    
    func addToList(_ contact: Contact){
        contacts.append(contact)
    }
}
