//
//  ViewController.swift
//  todo_first_app
//
//  Created by David Aldorf on 30.10.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var itemCell: ItemCell!

    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    let cell = tableView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let item = Item(name: "Hello", description: "World!")
        print(item.name)
        itemCell.nameLabel.text = item.name
        itemCell.descriptionLabel.text = item.name
    }

    
}

