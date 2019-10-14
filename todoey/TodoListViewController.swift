//
//  ViewController.swift
//  todoey
//
//  Created by Afrosoft on 14/10/2019.
//  Copyright © 2019 Afrosoft. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Ralph","Tashinga","Nyoni"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Mark - Tableview datasoource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
   }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
      return cell
        
    
}
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
       if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
         tableView.deselectRow(at: indexPath, animated: true)

    
    }

}

