//
//  OrderViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/21/22.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var orderTotalView: UIView!
    var orderSize = 0
    let stackView = UIStackView()
    var startAnOrderButton = UIButton()
    var checkOut = UIButton(frame: .zero)
    let orderTableView = UITableView()
    let yourOrderView = UIView()
    let yourOrderLabel = UILabel ()
    lazy var lineView : UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .gray
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        return lineView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderTotalView.backgroundColor = . white
      setUp()
        
        
        
    }
    func setUp(){
        let TableV = orderTableView
        
        // Herarchi adition
        orderTotalView.addSubview(yourOrderView)
        orderTotalView.addSubview(yourOrderLabel)
        yourOrderView.addSubview(lineView)
        orderTotalView.addSubview(TableV)
        
        
        yourOrderView.backgroundColor = .white//Testing visuals area
        yourOrderView.translatesAutoresizingMaskIntoConstraints = false
        yourOrderView.leadingAnchor.constraint(equalTo: orderTotalView.leadingAnchor, constant: -0).isActive = true
        yourOrderView.topAnchor.constraint(equalTo: orderTotalView.topAnchor, constant: 0).isActive = true
        yourOrderView.trailingAnchor.constraint(equalTo: orderTotalView.trailingAnchor, constant: 0).isActive = true
        yourOrderView.bottomAnchor.constraint(equalTo: orderTotalView.topAnchor, constant: 120).isActive = true
        
        // SEting name labels
        yourOrderLabel.backgroundColor = .white//Testing visuals area
        yourOrderLabel.translatesAutoresizingMaskIntoConstraints = false
        yourOrderLabel.topAnchor.constraint(equalTo: yourOrderView.topAnchor, constant: 60).isActive = true

        yourOrderLabel.leadingAnchor.constraint(equalTo: yourOrderView.leadingAnchor, constant: 30).isActive = true
        yourOrderLabel.trailingAnchor.constraint(equalTo: yourOrderView.trailingAnchor, constant: -30).isActive = true
        yourOrderLabel.bottomAnchor.constraint(equalTo: yourOrderView.bottomAnchor, constant: -4).isActive = true
        
        
        yourOrderLabel.text = "YOUR ORDER"
        yourOrderLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        
        lineView.centerXAnchor.constraint(equalTo: yourOrderView.centerXAnchor, constant: 0).isActive = true
        lineView.bottomAnchor.constraint(equalTo: yourOrderView.bottomAnchor, constant: 0).isActive = true
        lineView.leadingAnchor.constraint(equalTo: yourOrderView.leadingAnchor, constant: 30).isActive = true
        lineView.trailingAnchor.constraint(equalTo: yourOrderView.trailingAnchor, constant: -30).isActive = true

        
     
//        stackView.addArrangedSubview(startAnOrderButton)
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        orderTotalView.addSubview(stackView)

        
//        stackView.addArrangedSubview(checkOut)
        stackView.backgroundColor  = .gray
        stackView.leadingAnchor.constraint(equalTo: orderTotalView.leadingAnchor, constant: -0).isActive = true
//        stackView.topAnchor.constraint(equalTo: bagTotalView.centerYAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: orderTotalView.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: orderTotalView.bottomAnchor, constant: 0).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        stackView.addArrangedSubview(self.startAnOrderButton)
        startAnOrderButton.setTitle("START AN ORDER", for: .normal)
        startAnOrderButton.backgroundColor = . red
        startAnOrderButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        if orderSize >= 1 {
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
