//
//  GameCell.swift
//  AppGames
//
//  Created by Rafael Gonzalez on 02/05/25.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var gameName: UILabel!
    
    @IBOutlet weak var gameRaiting: UILabel!
    
    @IBOutlet weak var gameEsrbRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
