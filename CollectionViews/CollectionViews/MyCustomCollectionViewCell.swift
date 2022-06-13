//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Enzo Cazenave on 13/06/2022.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .lightGray
        
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
    }

}
