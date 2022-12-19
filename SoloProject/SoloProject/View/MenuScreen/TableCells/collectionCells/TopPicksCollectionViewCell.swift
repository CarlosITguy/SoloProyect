//
//  topRatedCollectionViewCell.swift
//  SoloProject
//
//  Created by Consultant on 12/14/22.
//

import UIKit

class TopPicksCollectionViewCell: UICollectionViewCell {
    // MARK: This cell i reusbale whit a diferent width fot the single elements
    
    lazy var topPickNameLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Dommy  TexDommyTexDommy  topRatCollView.heightAnchor.constraint(equalToConstant: 400).isActive = true"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .cyan
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
        
    }()
    
    lazy var pricePlusCaloriesLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Dommy  TexDommyTexDommy  topRatCollView.heightAnchor."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .cyan
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
        
    }()
    
    lazy var addModifyLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Dommy  TexDommyTexDommy  topRatCollView.heightAnchor."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .cyan
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
        
    }()
    
    
    lazy var songImage : UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .lightGray
        image.image = UIImage(named: "Questionmarks")
        
        return image
        
    }()
    
    
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        self.setUpCell()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func setUpCell(){
        backgroundColor = .blue
        contentView.backgroundColor = .brown
        
        //        contentView.addSubview(self.songImage)
        contentView.addSubview(self.topPickNameLabel)
        contentView.addSubview(self.songImage)
        //        contentView.addSubview(self.likeButtom)
        
        
        
        
        
        self.songImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        self.songImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        //        self.songImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
        self.songImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        self.songImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.songImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.topPickNameLabel.topAnchor.constraint(equalTo: self.songImage.bottomAnchor, constant: 8).isActive = true
        self.topPickNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        self.topPickNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        self.topPickNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        self.topPickNameLabel.adjustsFontSizeToFitWidth = true
        
        
        
        
        
    }
}
