//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Enzo Cazenave on 16/06/2022.
//

import UIKit

class ModifyConstraintsViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightConstraint.constant = 300
        topConstraint.constant = 64

    }
}
