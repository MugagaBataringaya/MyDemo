//
//  StaffDirectoryTableViewCell.swift
//  MyDemo
//
//  Created by user242733 on 8/24/23.
//

import UIKit

class StaffDirectoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var staffImageView: UIImageView!
    @IBOutlet weak var staffTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        staffTitleLabel.text = ""
    }
    
    func config(staff: Staff){
        staffTitleLabel.text = staff.title
    }
    

    

}
