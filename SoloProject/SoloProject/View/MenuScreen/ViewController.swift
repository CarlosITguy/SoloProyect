//
//  ViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ubicationTextFieldOutlet: UITextField!
    @IBOutlet weak var hat: UIImageView!
    @IBOutlet weak var singUpLabel: UILabel!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var scrollTableBar: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUp()
        
        
        //        self.ubicationTextFieldOutlet.layer.cornerCurve =
        
    }
    func setUp(){
        self.hat.image = UIImage(named: "ArbyshatWhite")
        ubicationTextFieldOutlet.backgroundColor = .clear
        
        ubicationTextFieldOutlet.tintColor = .white
        
        ubicationTextFieldOutlet.layer.masksToBounds = true
        ubicationTextFieldOutlet.layer.borderColor = UIColor.white.cgColor
        ubicationTextFieldOutlet.layer.borderWidth = 1
        let attributedString = NSMutableAttributedString.init(string: "Sing up now")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                                        NSRange.init(location: 0, length: attributedString.length));
        self.singUpLabel.attributedText = attributedString
        //            NSMutableAttributedString().underlined(" All rights reserved. 2020.")
        
        ubicationTextFieldOutlet.attributedPlaceholder = NSAttributedString(
            string: "Locations",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        self.ubicationTextFieldOutlet.layer.cornerRadius = 20
        // MARK: here is the first marl i ever done
        scrollTableBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollTableBar)
        scrollTableBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        scrollTableBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 197).isActive = true
        scrollTableBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0).isActive = true
        scrollTableBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0).isActive = true
        scrollTableBar.backgroundColor = .clear
        scrollTableBar.dataSource = self
        scrollTableBar.register(MealsTableViewCell.self, forCellReuseIdentifier: "topRatedCell")
    
        //        scrollTableBar.register(CollectionVeiwCell.self, forCellReuseIdentifier: "colectionViewCell")
        
        
    }
    
    
}

extension ViewController : UITableViewDataSource {
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
            guard let cell = self.scrollTableBar.dequeueReusableCell(withIdentifier: "topRatedCell" , for: indexPath) as? MealsTableViewCell else {return UITableViewCell() }
            
            
            return cell}
    }
    
    
    
    
    
}


