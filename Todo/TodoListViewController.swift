//
//  ViewController.swift
//  Todo
//
//  Created by CWA7028 on 1/14/18.
//  Copyright © 2018 Luke Woodward. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let arrayItem = ["get milk", "call frank", "mail letters"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // determines length of tableview
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItem.count
    }
    // sets datasource for table by assigning items of an array to rows of view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = arrayItem[indexPath.row]
        return cell
    }
    // deligate for touched rows
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrayItem[indexPath.row])
        
        // checks to see if a row has been selected -> display check
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

