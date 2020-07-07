//
//  LobbyController.swift
//  NightTime
//
//  Created by Чурсина Юлия on 06.07.2020.
//  Copyright © 2020 Julia. All rights reserved.
//

import UIKit

class LobbyController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    var wallpaper = UIImage(named: "Photowallpaper")
    
    var namePlay = [
        "Я никогда не...",
        "Мафия",
        "Агент"]
    
    var photoPlay = [UIImage(named: "iNever"), UIImage(named: "mafia"), UIImage(named: "agent")]
    
}

extension LobbyController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lobbyCell", for: indexPath) as! LobbyCollectionViewCell
        
        //let photo
        let name = namePlay[indexPath.row]
        let photo = photoPlay[indexPath.row]
        
        
        cell.lobbyPlayImage.image = photo
        cell.lobbyPlayLabel.text = name
        
        return cell
    }
}

extension LobbyController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "toINewer", sender: nil)
        default:
            performSegue(withIdentifier: "toAgent", sender: nil)
        }
    }
}
