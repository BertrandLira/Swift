//
//  ViewController.swift
//  AulaAutoLayoutUFPBTarde
//
//  Created by Student on 13/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var dadoOrigemTextField: UITextField!
    @IBOutlet weak var dadoDestinoLabel: UILabel!
    @IBOutlet weak var dadoImagem: UIImageView!
    
    
    @IBAction func enviarDado(_ sender: Any) {
        dadoDestinoLabel.text = dadoOrigemTextField.text
        dadoOrigemTextField.text = ""
        dadoImagem.image = UIImage(named: "Gêmeos")
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

