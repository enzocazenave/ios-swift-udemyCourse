//
//  ViewController.swift
//  Navegacion
//
//  Created by Enzo Cazenave on 02/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Testeando navegacion"
    }


    @IBAction func botonNegro(_ sender: Any) {
        performSegue(withIdentifier: "VCNegro", sender: self)
    }
    
    @IBAction func botonRosa(_ sender: Any) {
        performSegue(withIdentifier: "VCRosa", sender: self)
    }
    
    @IBAction func botonAzul(_ sender: Any) {
        performSegue(withIdentifier: "VCAzul", sender: self)
    }

}

