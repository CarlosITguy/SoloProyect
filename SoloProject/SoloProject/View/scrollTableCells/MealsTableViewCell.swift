//
//  MealsTableViewCell.swift
//  SoloProject
//
//  Created by Consultant on 12/14/22.
//

import UIKit

class MealsTableViewCell: UITableViewCell {
    
    
    
    lazy var mealImage : UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .lightGray
        image.image = UIImage(named: "Questionmarks")
   
        return image
        
    }()
    
    lazy var mealNameLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Dommy  TexDommyTexDommy  topRatCollView."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .cyan
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
        
    }()
    
    lazy var mealDescriptionLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Dommy  description for burgers  ."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .blue
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
        
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setUpMealCell()
        // Configure the view for the selected state
    }
    func setUpMealCell(){
        let name  = mealNameLabel
        let image = mealImage
        let description = mealDescriptionLabel
        
        contentView.addSubview(image)
        contentView.addSubview(name)
        contentView.addSubview(description)
        
        image.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        image.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        image.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        name.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        name.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
//        name.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        name.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 8).isActive = true
        name.heightAnchor.constraint(lessThanOrEqualToConstant: 100).isActive = true

        
        description.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8).isActive = true
        description.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        description.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        description.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 8).isActive = true
        description.heightAnchor.constraint(lessThanOrEqualToConstant: 100).isActive = true

        
        
    }
    

}
