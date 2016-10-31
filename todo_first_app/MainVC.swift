//
//  ViewController.swift
//  todo_first_app
//
//  Created by David Aldorf on 30.10.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!

    /**
     Prozatimní "databáze", našich itemů.
    */
    var items = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        // Tvorba jednotlivých instancí itemů
        let item1 = Item(name: "Hello", description: "Popisek poznámky \"Hello World\"")
        let item2 = Item(name: "Bye", description: "Popisek proznámky \"Bye World!\"")
        
        //Přidání itemů do "databáze"
        items.append(item1)
        items.append(item2)
    }
    
    /**
     Vyžadovaná metoda protokolu UITableViewDelegate
     - Returns: Vrací výšku, jednotlivých řádků v tabulce
    */
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    /**
     Vyžadovaná metoda protokolu UITableViewDelegate.
     Po zvolení řádku vykoná následující akce.
    */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Připravený na pro vykonání přechodu na další view, po kliknutí na řádek
        //let item = items[indexPath.row]
        //performSegue(withIdentifier: "ItemDetail", sender: item)
        
    }
    
    /**
     Vyžadovaná metoda protokolu UITableViewDelegate
     - Returns: Vrací močet řádků, který má tableView.
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    /**
     Vyžadovaná metoda protokolu UITableViewDelegate
     - Returns: Vrací určitou buňku určitýmu řádku
    */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as? ItemCell {
            
            let item = items[indexPath.row]
            
            cell.update(item: item)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }

    
}

