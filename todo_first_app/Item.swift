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
    var date: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
        self.state = false
        self.date = NSDate.getCurrentDate(style: .long)
    }
}


// Vyřešil jsem to takto, možná to jde lépe, ale už jsem unavenej
extension NSDate {
    static func getCurrentDate(style: DateFormatter.Style) -> String {
        let dateFormatter = DateFormatter()
        let currentDate = Date()
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateStyle = style
        return dateFormatter.string(from: currentDate)
    }
}
