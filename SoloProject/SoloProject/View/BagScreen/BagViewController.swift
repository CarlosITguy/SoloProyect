//
//  BagViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/21/22.
//

import UIKit

class BagViewController: UIViewController {
    @IBOutlet weak var bagTotalView: UIView!
    var bagsize = 0
    let stackView = UIStackView()
    var startAnOrderButton = UIButton()
    var checkOut = UIButton(frame: .zero)
    let bagTableView = UITableView()
    let yourBagView = UIView()
    let yourBagLabel = UILabel ()
    lazy var lineView : UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .gray
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        return lineView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bagTotalView.backgroundColor = . white
      setUp()
        
        
        
    }
    func setUp(){
        let TableV = bagTableView
        
        // Herarchi adition
        bagTotalView.addSubview(yourBagView)
        bagTotalView.addSubview(yourBagLabel)
        yourBagView.addSubview(lineView)
        bagTotalView.addSubview(TableV)
        
        
        yourBagView.backgroundColor = .white//Testing visuals area
        yourBagView.translatesAutoresizingMaskIntoConstraints = false
        yourBagView.leadingAnchor.constraint(equalTo: bagTotalView.leadingAnchor, constant: -0).isActive = true
        yourBagView.topAnchor.constraint(equalTo: bagTotalView.topAnchor, constant: 0).isActive = true
        yourBagView.trailingAnchor.constraint(equalTo: bagTotalView.trailingAnchor, constant: 0).isActive = true
        yourBagView.bottomAnchor.constraint(equalTo: bagTotalView.topAnchor, constant: 120).isActive = true
        
        // SEting name labels
        yourBagLabel.backgroundColor = .white//Testing visuals area
        yourBagLabel.translatesAutoresizingMaskIntoConstraints = false
        yourBagLabel.topAnchor.constraint(equalTo: yourBagView.topAnchor, constant: 60).isActive = true

        yourBagLabel.leadingAnchor.constraint(equalTo: yourBagView.leadingAnchor, constant: 30).isActive = true
        yourBagLabel.trailingAnchor.constraint(equalTo: yourBagView.trailingAnchor, constant: -30).isActive = true
        yourBagLabel.bottomAnchor.constraint(equalTo: yourBagView.bottomAnchor, constant: -4).isActive = true
        
        
        yourBagLabel.text = "YOUR BAG"
        yourBagLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        
        lineView.centerXAnchor.constraint(equalTo: yourBagView.centerXAnchor, constant: 0).isActive = true
        lineView.bottomAnchor.constraint(equalTo: yourBagView.bottomAnchor, constant: 0).isActive = true
        lineView.leadingAnchor.constraint(equalTo: yourBagView.leadingAnchor, constant: 30).isActive = true
        lineView.trailingAnchor.constraint(equalTo: yourBagView.trailingAnchor, constant: -30).isActive = true

        
     
//        stackView.addArrangedSubview(startAnOrderButton)
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bagTotalView.addSubview(stackView)

        
//        stackView.addArrangedSubview(checkOut)
        stackView.backgroundColor  = .gray
        stackView.leadingAnchor.constraint(equalTo: bagTotalView.leadingAnchor, constant: -0).isActive = true
//        stackView.topAnchor.constraint(equalTo: bagTotalView.centerYAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: bagTotalView.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bagTotalView.bottomAnchor, constant: 0).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        stackView.addArrangedSubview(self.startAnOrderButton)
        startAnOrderButton.setTitle("START AN ORDER", for: .normal)
        startAnOrderButton.backgroundColor = . red
        startAnOrderButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        if bagsize >= 1 {
            stackView.addArrangedSubview(self.checkOut)
            checkOut.setTitle("CHECK OUT", for: .normal)
            checkOut.backgroundColor = .systemGray3
            startAnOrderButton.setTitle( "ADD MORE ITEMS", for: .normal)
            startAnOrderButton.backgroundColor = .white
            startAnOrderButton.setTitleColor(.red, for: .normal)
            startAnOrderButton.titleLabel?.numberOfLines = 0
            startAnOrderButton.layer.borderWidth = 5
            startAnOrderButton.layer.borderColor = UIColor.red.cgColor
            startAnOrderButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 24)
            checkOut.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 24)
        }

    }
    

   

}
