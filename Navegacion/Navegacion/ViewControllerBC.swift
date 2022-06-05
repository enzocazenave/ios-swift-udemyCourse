//
//  ViewControllerNegro.swift
//  Navegacion
//
//  Created by Enzo Cazenave on 04/06/2022.
//

import UIKit

class ViewControllerBC: UIViewController {

    var titulo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tituloFinal = titulo {
            self.title = tituloFinal
            
            if tituloFinal == "Negro" {
                self.view.backgroundColor = UIColor.black
            } else if tituloFinal == "Rosa" {
                self.view.backgroundColor = UIColor.systemPink
            } else if tituloFinal == "Azul" {
                self.view.backgroundColor = UIColor.systemBlue
            }
        }
    }
}
