//
//  Item.swift
//  todo_first_app
//
//  Created by David Aldorf on 30.10.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import Foundation

class Item: PItem {
    
    
    // TROCHA TEORIE
    // private - omezuje přístup, pouze v rozmezí slošených závorek
    // file-private - omezuje přístup, na celý zdrojový soubor tzn. po případném označení name jako file-private, by jsme k němu měli přístup například v extension, který by byl napsán ve stejném souboru
    
    var name: String
    var description: String
    var state: Bool
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
        self.state = false
    }
    
    
}
