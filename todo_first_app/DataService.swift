//
//  DataService.swift
//  todo_first_app
//
//  Created by Martin Matějka on 01.11.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import Foundation

class DataService {
    
    /**
     Jediná instance této třídy (SINGLETON)
    */
   static let instance = DataService()
    
    let KEY_ITEM = "items"
    
    
    fileprivate var _loadedItem = [Item]()
    
    var loadedItems: [Item] {
        get {
            return _loadedItem
        }
    }
    
    func saveItems() {
        let itemsData = NSKeyedArchiver.archivedData(withRootObject: _loadedItem)
        UserDefaults.standard.set(itemsData, forKey: KEY_ITEM)
        UserDefaults.standard.synchronize()
    }
    
    func loadItem(){
        if let itemsData = UserDefaults.standard.object(forKey: KEY_ITEM) as? Data {
            if let itemArray = NSKeyedUnarchiver.unarchiveObject(with: itemsData) as? [Item] {
                _loadedItem = itemArray
            }
        }
        NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "itemsLoaded"), object: nil))
    }
    
    
    func documentsPathForFileName(_ name: String) -> String {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let fullpath = path[0] as NSString
        return fullpath.appendingPathComponent(name)
    }
    
    func addItem(_ item: Item) {
        _loadedItem.append(item)
        saveItems()
        loadItem()
        
    }
    
    
}
