//
//  MenuViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/19/22.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var JoinLabels: UIStackView!
    @IBOutlet weak var topMenuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp(){
        JoinLabels.isHidden = true
        topMenuTableView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(topMenuTableView)
        topMenuTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20).isActive = true
        topMenuTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topMenuTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        topMenuTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
////        topMenuTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 197).isActive = true
//        topMenuTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0).isActive = true
//        topMenuTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0).isActive = true
        topMenuTableView.backgroundColor = .clear
        topMenuTableView.dataSource = self
        topMenuTableView.register(MealsTableViewCell.self, forCellReuseIdentifier: "topRatedCell")
    
            //        scrollTableBar.register(CollectionVeiwCell.self, forCellReuseIdentifier: "colectionViewCell")
    
        }
    
    
    

}

extension MenuViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = labelsTableViewCells()

            cell.attributedString = NSMutableAttributedString.init(string: "    TOP PIKCS")
            cell.attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: NSRange.init(location: 0, length: cell.attributedString.length))
            cell.backgroundColor = .red


            return cell
        }
        else if indexPath.row == 1{
            let cell = CollectionTableViewCell()
//            guard let cell = self.scrollTableBar.dequeueReusableCell(withIdentifier: "topRatedCell" , for: indexPath) as? CollectionTableViewCell else {return UITableViewCell() }
            cell.textLabel?.text = "*TOP RATED*"


            return cell
        }

        else if indexPath.row == 2 {
            let cell = labelsTableViewCells()

            cell.attributedString = NSMutableAttributedString.init(string: "    MEALS")
            cell.attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange.init(location: 0, length: cell.attributedString.length))
            cell.premadeLabel.backgroundColor = .clear


            return cell
        }

        else{
            guard let cell = self.topMenuTableView.dequeueReusableCell(withIdentifier: "topRatedCell" , for: indexPath) as? MealsTableViewCell else {return UITableViewCell() }


            return cell}
    }





}

