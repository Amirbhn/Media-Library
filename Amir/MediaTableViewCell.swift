//
//  MediaTableViewCell.swift
//  Amir
//
//  Created by Map04 on 2021-04-06.
//

import UIKit

class MediaTableViewCell: UITableViewCell {

    @IBOutlet weak var mediaPublicationYear: UILabel!
    @IBOutlet weak var mediaNameLabel: UILabel!
    @IBOutlet weak var mediaImageView: UIImageView!
    
    func update(with media: Media) {
        mediaPublicationYear.text = "\(media.publicationYear)"
        mediaNameLabel.text = media.name
        mediaImageView.image = UIImage(named: "\(media.image)")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
