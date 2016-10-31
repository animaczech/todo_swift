//
//  DetailItemViewController.swift
//  todo_first_app
//
//  Created by Martin Matějka on 31.10.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import UIKit

class DetailItemVC: UIViewController {

   
    @IBOutlet weak var nameItem: UILabel!
    @IBOutlet weak var descriptionItem: UILabel!
     @IBOutlet weak var dateItem: UILabel!
    
    
    private var _item: Item!
    
    var item: Item {
        get {
            return _item
        } set {
            _item = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameItem.text = item.name
        descriptionItem.text = item.description
        dateItem.text = item.date
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
