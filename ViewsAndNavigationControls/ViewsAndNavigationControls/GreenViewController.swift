//
//  GreenViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Enzo Cazenave on 02/06/2022.
//

import UIKit

class GreenViewController: UIPageViewController {

    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if myLabel == nil {
            return
        }
        
        myLabel.isHidden = true
        mySearchBar.delegate = self
    }
}

extension GreenViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}
