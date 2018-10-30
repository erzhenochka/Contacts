//
//  addViewController.swift
//  Cotacts
//
//  Created by Vincenzo Di Fiore on 18/10/2018.
//  Copyright © 2018 Vincenzo Di Fiore. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

   
    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var number: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func done(_ sender: Any) {
        
        let contact = Contact(name: self.firstNameOutlet.text!, surname: self.lastName.text!, number: self.number.text!)
        ContactList.shared.addToList(contact)
        print(ContactList.shared.getList().count)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
