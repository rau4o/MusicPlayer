//
//  CategoryCell.swift
//  MusicPlayer
//
//  Created by rau4o on 7/21/19.
//  Copyright © 2019 rau4o. All rights reserved.
//

import UIKit
import Kingfisher
import Firebase
import FirebaseFirestore

import UIKit

class CategoryCell: UICollectionViewCell,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    
    var db: Firestore!
    
    var musicCategory: MusicCategory? {
        didSet {
            if let name = musicCategory?.name {
                nameLabel.text = name
            }
        }
    }
    
    var musics = [Music]()
    
    let nameLabel = UILabel()
    
    var collectionView: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //        collectionView.backgroundColor = .purple
        collectionView.backgroundColor = .clear
        layout.scrollDirection = .horizontal
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        db = Firestore.firestore()
        
        addSubviews()
        setConstraints()
        stylize()
        fetchCollection()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func stylize() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MusicCell.self, forCellWithReuseIdentifier: cellId)
        
        nameLabel.text = ""
        nameLabel.font = UIFont(name: "futura", size: 20)
        nameLabel.textColor = .red
        nameLabel.numberOfLines = 2
    }
    private func addSubviews() {
        addSubview(collectionView)
        addSubview(nameLabel)
        
    }
    private func setConstraints() {
        
        collectionView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 0))
        
        nameLabel.anchor(top: collectionView.topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: -50, left: 10, bottom: 0, right: 10), size: .init(width: 80, height: 60))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = musicCategory?.musics?.count {
            return count
        }
        return 0
    }
    
//    func fetchCollection() {
//        let collectionRef = db.collection("StoriesRu")
//        
//        collectionRef.getDocuments { (snap, error) in
//            
//            guard let documents = snap?.documents else {return}
//            for document in documents {
//                let data = document.data()
//                let newCategory = Music.init(data: data)
//                self.musics.append(newCategory)
//            }
//            self.collectionView.reloadData()
//        }
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MusicCell
        cell.backgroundColor = .clear
        cell.layer.cornerRadius = 10
        cell.music = musicCategory?.musics?[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 14)
    }
}
