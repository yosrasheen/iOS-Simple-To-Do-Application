//
//  ViewController.swift
//  Simple To Do Application
//
//  Created by mshalan on 7/8/17.
//  Copyright © 2017 mshalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var txtOutput: UITextView!
    
    var items:[String]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func didTabButton(_ sender: Any) {
        if(txtInput.text! == ""){
            return
        }
        else{
            items.append(txtInput.text!)
        }
        txtOutput.text=""
        for item in items{
            txtOutput.text.append("\(item)\n")
            
        }
        txtInput.text=""
        txtInput.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtInput.resignFirstResponder()
        return false
    }

}

