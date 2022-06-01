//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by Enzo Cazenave on 31/05/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiqueta.text = "Ya cambie"
    }

    @IBAction func cambiarTexto(_ sender: Any) {
        etiqueta.text = "Hola mundo cruel"
    }
    
}

