//
//  TableViewCell.swift
//  cartApp
//
//  Created by DoSSi4 on 07.02.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var cartbtn: UIButton!
    static let identifier = "TableViewCell"
    static let nib = UINib(nibName: identifier, bundle: nil)
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
