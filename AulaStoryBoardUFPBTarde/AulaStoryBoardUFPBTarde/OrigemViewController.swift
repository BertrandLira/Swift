//
//  OrigemViewController.swift
//  AulaStoryBoardUFPBTarde
//
//  Created by Student on 17/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class OrigemViewController: UIViewController {

    @IBOutlet weak var origemTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "novaCor"{
            
            if let novaView = segue.destination as? DestinoViewController{
                
                novaView.corOrigem = origemTextField.text
                
            }
            
        }
        
        
    }

}
