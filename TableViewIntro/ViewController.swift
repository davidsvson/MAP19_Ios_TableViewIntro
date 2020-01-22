//
//  ViewController.swift
//  TableViewIntro
//
//  Created by David Svensson on 2020-01-22.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let personCellId =  "PersonCellId"
    
    var persons = [Person]()  // = ["David", "Susan", "Lois", "Laura"]
    
  //  let cellIdentity = "IdCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons.append(Person(firstName: "David", secondName: "Svensson"))
        persons.append(Person(firstName: "Susan", secondName: "Svensson"))
        persons.append(Person(firstName: "Per", secondName: "Persson"))
        persons.append(Person(firstName: "Lois", secondName: "Persson"))

        let nib = UINib(nibName: "PersonTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: personCellId)

        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("NUMBER OF ROWS")
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Cell for row \(indexPath.row)")

        let cell = tableView.dequeueReusableCell(withIdentifier: personCellId, for: indexPath) as! PersonTableViewCell
        
        cell.firstNameLabel.text = persons[indexPath.row].firstName
        cell.secondNameLabel.text = persons[indexPath.row].secondName
        
   //     cell.textLabel?.text = String(persons[indexPath.row])
        
//        if indexPath.row == 3 {
//            cell.textLabel?.text = "susan"
//        } else {
//            cell.textLabel?.text = "David"
//        }
        
        return cell
    }
    
    
    
    
    
}

