//
//  CollectionTableViewCell.swift
//  SoloProject
//
//  Created by Consultant on 12/14/22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    var topRatedCollectionView : UICollectionView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setUpCollectionView()
    }
    
    
    
    func setUpCollectionView(){
        backgroundColor = .red
        let layoutCV = UICollectionViewFlowLayout()
        
        layoutCV.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layoutCV.sectionInset = .init(top: 8, left: 8, bottom: 8, right: 8)
        layoutCV.scrollDirection = .horizontal
        let topRatCollView = UICollectionView(frame: .zero, collectionViewLayout: layoutCV)
        topRatCollView.translatesAutoresizingMaskIntoConstraints = false
        
       
        contentView.addSubview(topRatCollView)
        topRatCollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 8).isActive = true
        topRatCollView.topAnchor.constraint(equalTo: contentView.topAnchor , constant: 8).isActive = true
        topRatCollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor , constant: 8).isActive = true
        topRatCollView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor , constant: 8).isActive = true
        topRatCollView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        topRatCollView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        topRatCollView.register( TopPicksCollectionViewCell.self, forCellWithReuseIdentifier: "topRatedCollectionViewCell")
        topRatCollView.dataSource = self
        topRatCollView.delegate = self
        self.topRatedCollectionView = topRatCollView
    }
    
}




extension CollectionTableViewCell : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let collCell  = self.topRatedCollectionView?.dequeueReusableCell(withReuseIdentifier: "topRatedCollectionViewCell", for: indexPath) as? TopPicksCollectionViewCell  else {return UICollectionViewCell ()}
        
        collCell.backgroundColor = .purple
        return collCell
    }
    
    
    
    
}
extension CollectionTableViewCell : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("Seleccione una celda de coleccion")
    }
}
