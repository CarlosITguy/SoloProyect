//
//  DealsNavegationViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/17/22.
//

import UIKit

class NavegationViewController: UINavigationController {
    let settingVC = settingViewController()

    var button1 : UIButton = UIButton(frame: .zero)
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNavBar()
        settingVC.view.backgroundColor = .purple
        
    }
    func setUpNavBar(){

        let redBackground = UIView()
        redBackground.backgroundColor = .red
        
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 20
        
        // Add the stack view as a subview of the navigation bar
        navigationBar.addSubview(redBackground)
        
        navigationBar.addSubview(stackView)
        
        
        redBackground.translatesAutoresizingMaskIntoConstraints = false
        
        redBackground.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 0).isActive = true
        redBackground.topAnchor.constraint(equalTo: navigationBar.topAnchor, constant: -45).isActive = true
        redBackground.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: 0).isActive = true
        redBackground.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: 5).isActive = true
        
        
        //        redBackground.centerXAnchor.constraint(equalTo: navigationBar.centerXAnchor).isActive = true
        
        
        // Set up constraints to position the stack view in the navigation bar
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: -8).isActive = true
        stackView.topAnchor.constraint(equalTo: navigationBar.topAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -0).isActive = true
        stackView.centerYAnchor.constraint(equalTo: navigationBar.centerYAnchor).isActive = true
        
        // Add bar button items or other views to the stack view
        
        var button1 = UIButton(type: .system)
        if self.navigationBar.backItem == nil {
            button1.setImage(UIImage(named: "ArbyshatWhite"), for: .normal)
        } else {
            button1.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
            
        }
        
        button1.imageView?.contentMode = .scaleAspectFit
        
        button1.addTarget(self, action: #selector(self.popViewController(animated:)), for: .touchUpInside)
        
        
        
        
        let textfield = UITextField()
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(textfield)
        textfield.backgroundColor = .clear
        textfield.tintColor = .white
        textfield.layer.masksToBounds = true
        textfield.layer.cornerRadius = 25
        textfield.layer.borderColor = UIColor.white.cgColor
        textfield.layer.borderWidth = 1
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textfield.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
        textfield.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 0).isActive = true
        textfield.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: -1).isActive = true
        
        
        
        let button2 = UIButton(type: .system)
        stackView.addArrangedSubview(button2)
        button2.setImage(UIImage(systemName: "ellipsis"), for: UIControl.State())
//        button2.addTarget(self, action: #selector(button2), for: .touchUpInside)

        button2.addTarget(self, action: #selector(ShowSettingViewController), for: .touchUpInside)
        
        // Optionally, customize the stack view's appearance using its properties or appearance proxies
        stackView.backgroundColor = .red
        stackView.tintColor = .white
        stackView.spacing = 16
        
        self.button1 = button1
    }
    @objc func ShowSettingViewController() {
        print(" Botton press ")
        let SVC = settingVC
        present(SVC, animated: true, completion: nil)        //        
    }

}
