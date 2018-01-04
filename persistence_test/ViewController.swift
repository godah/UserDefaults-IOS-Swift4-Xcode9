//
//  ViewController.swift
//  persistence_test
//
//  Created by Chamaliun Corp on 04/01/2018.
//  Copyright © 2018 Chamaliun Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Text: UITextField!
    var nome: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        nome = defaults.object(forKey: "nome") as? String
        
        if nome == nil{
            nome = "Default"
        }
        
        Text.text = nome
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnSalvarAction(_ sender: Any) {
        
        if Text.text! != "Default" {
            nome = Text.text
            
            let defaults = UserDefaults.standard
            defaults.setValue(nome, forKey: "nome")
        }
        
    }
    
    
}

