//
//  LobbyCollectionViewCell.swift
//  NightTime
//
//  Created by Чурсина Юлия on 06.07.2020.
//  Copyright © 2020 Julia. All rights reserved.
//

import UIKit

class LobbyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lobbyPlayImage: UIImageView!
    
    @IBOutlet weak var lobbyPlayLabel: UILabel!
    
    @IBOutlet weak var backView: UIView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backView.layer.cornerRadius = 30
        lobbyPlayImage.layer.cornerRadius = 30
    }
    
}
