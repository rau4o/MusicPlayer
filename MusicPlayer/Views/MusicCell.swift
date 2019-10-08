//
//  MusicCell.swift
//  MusicPlayer
//
//  Created by rau4o on 7/23/19.
//  Copyright © 2019 rau4o. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
import Kingfisher

class MusicCell: UICollectionViewCell {
    
    var music: Music? {
        didSet {
            if let name = music?.name {
                titleLabel.text = name
            }
            categoryLabel.text = music?.category
            
            if let imageName = music?.imageName {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    let imageView = UIImageView()
    
    let titleLabel = UILabel()
    
    let categoryLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        stylize()
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func stylize() {
        imageView.image = UIImage(named: "demo")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        
        titleLabel.text = "Demo"
        titleLabel.font = UIFont(name: "futura", size: 20)
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        
        categoryLabel.text = "Qiuras cdasdawodasdas"
        categoryLabel.font = UIFont(name: "futura", size: 15)
        categoryLabel.textColor = .black
        categoryLabel.textAlignment = .center
        categoryLabel.adjustsFontSizeToFitWidth = true
        categoryLabel.minimumScaleFactor = 0.2
        categoryLabel.numberOfLines = 5
        categoryLabel.sizeToFit()
    }
    
    private func addSubviews() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(categoryLabel)
    }
    
    private func setConstraints() {
        imageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 40, right: 0), size: .init(width: 0, height: 0))
        
        titleLabel.anchor(top: nil, leading: leadingAnchor, bottom: imageView.bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 15, bottom: 5, right: 15), size: .init(width: 50, height: 40))
        
        categoryLabel.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: -3, left: 5, bottom: 0, right: 5), size: .init(width: 50, height: 50))
    }
    
    func confirgureCell(music: Music) {
        categoryLabel.text = music.name
        if let url = URL(string: music.imageName! ) {
            let placeholder = UIImage(named: "placeholder")
            let options: KingfisherOptionsInfo = [KingfisherOptionsInfoItem.transition(.fade(0.1))]
            imageView.kf.setImage(with: url,placeholder: placeholder,options: options)
        }
    }
    
}

