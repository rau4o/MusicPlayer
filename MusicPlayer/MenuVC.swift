//
//  MenuVC.swift
//  MusicPlayer
//
//  Created by rau4o on 7/21/19.
//  Copyright © 2019 rau4o. All rights reserved.
//

import UIKit

class MenuVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    
    var musicCategories: [MusicCategory]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        stylize()
        setConstraints()
    }
    
    private func stylize() {
        view.backgroundColor = .purple
        collectionView.backgroundColor = .clear
        
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    private func addSubviews() {
        
    }
    
    private func setConstraints() {
        collectionView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 0))
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = musicCategories?.count {
            return count
        }
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        cell.backgroundColor = .clear
        cell.musicCategory = musicCategories?[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 240)
    }
}
