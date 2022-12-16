//
//  TopRatedTableViewCell.swift
//  SoloProject
//
//  Created by Consultant on 12/14/22.
//

import UIKit

class labelsTableViewCells: UITableViewCell {
    
    
    
    
    var attributedString = NSMutableAttributedString.init(string: "Dommy Text")
    lazy var premadeLabel : UILabel = {
        let prueba = UILabel(frame: .zero)
        //        name.text = "Domi Tex"
        prueba.translatesAutoresizingMaskIntoConstraints = false
//        prueba.backgroundColor = UIColor.purple
        
        return prueba
        
    }()
    lazy var markLabel : UILabel = {
        let mark = UILabel(frame: .zero)
        //        name.text = "Domi Tex"
        mark.translatesAutoresizingMaskIntoConstraints = false
        mark.backgroundColor = .systemRed
        
        return mark
        
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setUpLabel()
        
    }
    
    
    func setUpLabel (){
        let pl = self.premadeLabel
        //
        //        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange.init(location: 0, length: attributedString.length));
        
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 30), range:
                                        NSRange.init(location: 0, length: attributedString.length))
        //        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange.init(location: 0, length: attributedString.length))
        pl.attributedText = attributedString
        
        contentView.addSubview(pl)
        
        pl.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        pl.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        pl .heightAnchor.constraint(equalToConstant: 70).isActive = true
        pl.adjustsFontSizeToFitWidth = true
        pl .widthAnchor.constraint(equalToConstant: 270).isActive = true
        
        self.premadeLabel = pl
        
    }
}

