//
//  ViewController.swift
//  DesafioIMC
//
//  Created by Student on 13/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dadoOrigemPeso: UITextField!
    @IBOutlet weak var dadoOrigemAltura: UITextField!
    @IBOutlet weak var dadoDestinoResutado: UILabel!
    
    
    var imc : Double = 0
    
    @IBAction func calcularIMC(_ sender: Any) {
        let peso = Double(dadoOrigemPeso.text ?? "0") ?? 0
        let altura = Double(dadoOrigemAltura.text ?? "0") ?? 0
        
        imc = (peso / (altura * altura))
        imc = round(imc*100.0)/100.0
        
        switch imc {
        case 0...18.5:
            dadoDestinoResutado.text = String(imc) + "\nAbaixo do peso."
        case 18.6...24.9:
            dadoDestinoResutado.text = String(imc) + "\nPeso ideal. Parabéns!"
        case 25...29.9:
            dadoDestinoResutado.text = String(imc) + "\nLevemente acima do peso."
        case 30...34.9:
            dadoDestinoResutado.text = String(imc) + "\nObesidade grau I."
        case 35...39.9:
            dadoDestinoResutado.text = String(imc) + "\nObesidade grau II(severa)."
        default:
            dadoDestinoResutado.text = String(imc) + "\nObesidade grau III(mórbida)."
            
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

