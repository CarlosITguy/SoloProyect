//
//  TesterViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/18/22.
//

import UIKit

class DealsViewController: UIViewController {
    
    @IBOutlet weak var DealTotalView: UIView!
    let dealsTableView = UITableView()
    let yourDealsView = UIView()
    let yourDealsLabel = UILabel ()
    
    lazy var lineView : UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .gray
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        return lineView
    }()
    
    @IBOutlet weak var startAnOrderButton: UIButton!
    
    @IBAction func startAnOrder(_ sender: Any) {
        
        let tabBar = self.tabBarController
        let homeViewController = tabBarController?.viewControllers?[0]
        tabBarController?.selectedViewController = homeViewController
        
    }
    override func viewWillAppear(_ animated: Bool) {
        startAnOrderButton.backgroundColor = .red
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setUp()
        
    }
    
    
    func setUp(){
        let TableV = dealsTableView
       
        // Herarchi adition
        DealTotalView.addSubview(yourDealsView)
        yourDealsView.addSubview(yourDealsLabel)
        yourDealsView.addSubview(lineView)
        DealTotalView.addSubview(TableV)
        
        
        
        
        yourDealsView.backgroundColor = .white//Testing visuals area
        yourDealsView.translatesAutoresizingMaskIntoConstraints = false
        yourDealsView.leadingAnchor.constraint(equalTo: DealTotalView.leadingAnchor, constant: -0).isActive = true
        yourDealsView.topAnchor.constraint(equalTo: DealTotalView.topAnchor, constant: 0).isActive = true
        yourDealsView.trailingAnchor.constraint(equalTo: DealTotalView.trailingAnchor, constant: 0).isActive = true
        yourDealsView.bottomAnchor.constraint(equalTo: DealTotalView.topAnchor, constant: 120).isActive = true
        
        // SEting name labels
        yourDealsLabel.backgroundColor = .white//Testing visuals area
        yourDealsLabel.translatesAutoresizingMaskIntoConstraints = false
        yourDealsLabel.topAnchor.constraint(equalTo: yourDealsView.topAnchor, constant: 60).isActive = true

        yourDealsLabel.leadingAnchor.constraint(equalTo: yourDealsView.leadingAnchor, constant: 30).isActive = true
        yourDealsLabel.trailingAnchor.constraint(equalTo: yourDealsView.trailingAnchor, constant: -30).isActive = true
        yourDealsLabel.bottomAnchor.constraint(equalTo: yourDealsView.bottomAnchor, constant: -4).isActive = true
        
        
        yourDealsLabel.text = "YOUR DEALS"
        yourDealsLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        
        lineView.centerXAnchor.constraint(equalTo: yourDealsView.centerXAnchor, constant: 0).isActive = true
        lineView.bottomAnchor.constraint(equalTo: yourDealsView.bottomAnchor, constant: 0).isActive = true
        lineView.leadingAnchor.constraint(equalTo: yourDealsView.leadingAnchor, constant: 30).isActive = true
        lineView.trailingAnchor.constraint(equalTo: yourDealsView.trailingAnchor, constant: -30).isActive = true


        

        self.startAnOrderButton.tintColor = .red
        
        
        
    }
    
    
}


