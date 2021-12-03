//
//  SleepCollectionViewCell.swift
//  Mindless
//
//  Created by Natália Brocca dos Santos on 02/12/21.
//

import UIKit

class SleepCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var iconImageCell: UIImageView!
    @IBOutlet weak var descriptionCell: UILabel!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
