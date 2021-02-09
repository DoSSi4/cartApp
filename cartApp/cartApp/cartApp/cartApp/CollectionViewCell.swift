//
//  CollectionViewCell.swift
//  cartApp
//
//  Created by DoSSi4 on 07.02.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var collimgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var colldesc: UILabel!
    @IBOutlet weak var cartbttn: UIButton!
    @IBOutlet weak var price: UILabel!
    static let identifier = "CollectionViewCell"
    static let nib = UINib(nibName: identifier, bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
