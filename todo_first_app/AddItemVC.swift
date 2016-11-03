//
//  AddItemVC.swift
//  todo_first_app
//
//  Created by Martin Matějka on 01.11.16.
//  Copyright © 2016 David Aldorf. All rights reserved.
//

import UIKit

class AddItemVC: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func saveItem(_ sender: Any?) {
        if let title = titleTextField.text, let desc = descriptionTextField.text {
            
            let item = Item(name: title, description: desc)
            DataService.instance.addItem(item)
            dismiss(animated: true, completion: nil)
        }
    }
    
    
}
