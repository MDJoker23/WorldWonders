//
//  WonderTableViewCell.swift
//  WorldWonders
//
//  Created by Imac on 06.04.2023.
//

import UIKit
import SDWebImage
class WonderTableViewCell: UITableViewCell {

    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var favoriteSong: UILabel!
    @IBOutlet weak var tittlemabeView: UIImageView!
    @IBOutlet weak var photo_artistImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(wonder: WorldWonder) {
        albumLabel.text = wonder.album
        artistLabel.text = wonder.artist
        favoriteSong.text = wonder.favoriteSong
        tittlemabeView.sd_setImage(with: URL(string: wonder.tittle), completed:  nil)
        photo_artistImageView.sd_setImage(with: URL(string: wonder.photo_artist), completed:  nil)
        backgroundImageView.sd_setImage(with: URL(string: wonder.background), completed: nil)
    }
}
