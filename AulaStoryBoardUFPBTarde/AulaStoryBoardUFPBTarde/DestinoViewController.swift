//
//  DestinoViewController.swift
//  AulaStoryBoardUFPBTarde
//
//  Created by Student on 17/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestinoViewController: UIViewController {

    var corOrigem: String?
    
    
    @IBOutlet weak var corDestinoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        corDestinoLabel.text = corOrigem
        
        if corOrigem != nil {
            switch corOrigem!.lowercased() {
            case "azul":
                self.view.backgroundColor = UIColor.blue
            case "vermelho":
                self.view.backgroundColor = UIColor.red
            case "roxo":
                self.view.backgroundColor = UIColor.purple
            default:
                self.view.backgroundColor = UIColor.black
            }
        }
        
    }

    
    
    
    

}
