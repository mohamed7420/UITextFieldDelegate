//
//  ViewController.swift
//  UITextFieldDelegate
//
//  Created by Mohamed on 8/18/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITextFieldDelegate{

    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var labelll: UILabel!
    
    @IBOutlet weak var textFieldName: UITextField!
    
    
    @IBOutlet weak var textFieldUserName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldName.delegate = self
        
        self.textFieldUserName.delegate = self
        
    
        
    }

    @IBAction func btn_Action(_ sender: UIButton) {
        
       TakeText()
        
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    
    
}
extension ViewController{
    
    func TakeText(){
        
        let name  = textFieldName.text
        let password = textFieldUserName.text
        
        labelll.text = "Name : \(name!)\n password : \(password!)"
        
    }
    
}

