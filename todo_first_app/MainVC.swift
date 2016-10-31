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
        let item = items[indexPath.row]
        performSegue(withIdentifier: "ItemDetail", sender: item)
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
    
    /**
     Tato metoda slouží pro úpravy předtím než se vykoná přechod na jiné okno.
     Využívá se pro předání informací.
     Poté když je zavolána metoda, v našem případě např. 
      performSegue(withIdentifier: "ItemDetail", sender: item)
     je přední zpracována tato.
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Zjistíme zda se jedná o konkrétní okno kam přecházíme
        if let destination = segue.destination as? DetailItemVC {
            // zjistíme, zda předmět který předáváme je náš item
            if let item = sender as? Item {
                //V DetailItemVC máme attribut item, tak mu ho předáme
                destination.item = item
            }
        }
    }


    
}

