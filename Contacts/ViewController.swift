//
//  ViewController.swift
//  Contacts
//
//  Created by Erzhena Mironova on 18/10/2018.
//  Copyright © 2018 Erzhena Mironova. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var contacts:[Contact]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactIdentifier", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].name + " " + contacts[indexPath.row].surname
        cell.detailTextLabel?.text = contacts[indexPath.row].number
        return cell
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        contacts = ContactList.shared.getList()
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = ContactList.shared.getList()
        print(ContactList.shared.getList().count)
    }
}
