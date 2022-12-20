//
//  settingViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/20/22.
//

import Foundation
import UIKit
import SafariServices

class settingViewController : UIViewController {
    
    
    lazy var element1 : UIButton = {
        let element = UIButton(frame : .zero)
        element.setTitle("X", for: .normal)
        element.setTitleColor(.black, for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        return element
    }()
    let element2 = UIView()
    
    lazy var label2 : UILabel  = {
        let label = UILabel(frame: .zero)
        label.text = "Nutrition info"
        label.textColor = .black
        label.font = .systemFont(ofSize: 26, weight: .regular)
        return label
    }()
    
    lazy var button2 : UIButton = {
        let button = UIButton()
        button.setTitle(">", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 26, weight: .regular)
        return button
    }()
    
    let element3 = UIView()
    
    lazy var label3 : UILabel  = {
        let label = UILabel(frame: .zero)
        label.text = "Legal info"
        label.textColor = .black
        label.font = .systemFont(ofSize: 26, weight: .regular)
        return label
    }()
    
    lazy var button3 : UIButton = {
        let button = UIButton()
        button.setTitle(">", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 26, weight: .regular)
        return button
    }()
    
    let element4 = UIView()
    
    lazy var label4 : UILabel  = {
        let label = UILabel(frame: .zero)
        label.text = "Contact & Faq"
        label.textColor = .black
        label.font = .systemFont(ofSize: 26, weight: .regular)
        return label
    }()
    
    lazy var button4 : UIButton = {
        let button = UIButton()
        button.setTitle(">", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 26, weight: .regular)
        return button
    }()
    
 
    
    lazy var element5 : UILabel = {
        let element = UILabel(frame : .zero)
        element.text = "version 4.7.12.4641"
        return element
    }()
    lazy var element6 : UIButton = {
        let element = UIButton(frame : .zero)
        element.setTitle(" LOGIN / SING UP", for: .normal)
        element.setTitleColor(.black, for: .normal)
        element.backgroundColor = .red
        element.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        return element
    }()
    
    
    
    
    var settingsTableView : UIView = UIView(frame: .zero)
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpPrev()
        setUpTabView()
        view.backgroundColor = .clear
        
    }
    
    
    func setUpPrev(){
        // Crea el elemento 2 (leyenda y enlace a la izquierda, flecha a la derecha)
        
        element2.addSubview(label2)
        element2.addSubview(button2)
        button2.addTarget(self, action: #selector(goToNutritionalInfo), for: .touchUpInside)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.leadingAnchor.constraint(equalTo: element2.leadingAnchor, constant: 16).isActive = true
        label2.centerYAnchor.constraint(equalTo: element2.centerYAnchor).isActive = true
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.trailingAnchor.constraint(equalTo: element2.trailingAnchor, constant: -16).isActive = true
        button2.centerYAnchor.constraint(equalTo: element2.centerYAnchor).isActive = true
        
        element3.addSubview(label3)
        element3.addSubview(button3)
        button3.addTarget(self, action: #selector(goToLegalInfo), for: .touchUpInside)
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.leadingAnchor.constraint(equalTo: element3.leadingAnchor, constant: 16).isActive = true
        label3.centerYAnchor.constraint(equalTo: element3.centerYAnchor).isActive = true
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.trailingAnchor.constraint(equalTo: element3.trailingAnchor, constant: -16).isActive = true
        button3.centerYAnchor.constraint(equalTo: element3.centerYAnchor).isActive = true
        
        element4.addSubview(label4)
        element4.addSubview(button4)
        button4.addTarget(self, action: #selector(goToContactFaq), for: .touchUpInside)
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.leadingAnchor.constraint(equalTo: element4.leadingAnchor, constant: 16).isActive = true
        label4.centerYAnchor.constraint(equalTo: element4.centerYAnchor).isActive = true
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.trailingAnchor.constraint(equalTo: element4.trailingAnchor, constant: -16).isActive = true
        button4.centerYAnchor.constraint(equalTo: element4.centerYAnchor).isActive = true
        
        element6.addTarget(self, action: #selector(goToLogInSingUp), for: .touchUpInside)
        element1.addTarget(self, action: #selector(closeModal), for: .touchUpInside)

    }
    
    
    
    
    func setUpTabView(){
        let settingsTV = settingsTableView
        
        settingsTV.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(settingsTV)
        settingsTV.backgroundColor = .white
        settingsTV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        settingsTV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        settingsTV.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        settingsTV.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0).isActive = true
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        //        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(element1)
        stackView.addArrangedSubview(element2)
        stackView.addArrangedSubview(element3)
        stackView.addArrangedSubview(element4)
        stackView.addArrangedSubview(element5)
        stackView.addArrangedSubview(element6)
        settingsTV.addSubview(stackView)
        element1.translatesAutoresizingMaskIntoConstraints = false
        element1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        element1.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        element2.translatesAutoresizingMaskIntoConstraints = false
        element2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        element2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        element3.translatesAutoresizingMaskIntoConstraints = false
        element3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        element3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        //        element2.topAnchor.constraint(equalTo: stackView.centerYAnchor, constant: 0).isActive = true
        //        element2.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: -0).isActive = true
        
        
    }
    
    //    element1.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    
    @objc func goToNutritionalInfo() {
        let safariViewController = SFSafariViewController(url: URL(string: "https://assets.ctfassets.net/o19mhvm9a2cm/3I88rX9NWgmAlkqtf88eSr/e2021e6ab0cc3dedd6e9458875be5e35/Arbys_Ingredients___Allergens_SEPT.pdf")!)
        present(safariViewController, animated: true, completion: nil)
        
    }
    @objc func goToLegalInfo() {
        let safariViewController = SFSafariViewController(url: URL(string: "https://www.arbys.com/privacy-policy")!)
        present(safariViewController, animated: true, completion: nil)
        
    }
    @objc func goToContactFaq() {
        let safariViewController = SFSafariViewController(url: URL(string: "https://www.arbys.com/contact-us/")!)
        present(safariViewController, animated: true, completion: nil)
        
    }
    @objc func goToLogInSingUp() {
        let safariViewController = SFSafariViewController(url: URL(string: "https://login.arbys.com/login?state=hKFo2SBsdWp0LWN6YU1uZlBYWC1JcktLeHMxc2VJbERHN09wM6FupWxvZ2luo3RpZNkgLU1pODdwMHZjNEhHaGlnTFlTYzJuTEdPa0NzSVpYOFejY2lk2SBJMGtrS3NaenZaZXZFclozSGR6c21HdUZCMEFERG1vUg&client=I0kkKsZzvZevErZ3HdzsmGuFB0ADDmoR&protocol=oauth2&code_challenge=1NFzCx5K7NMHYGeN1UmCn_qjTVTkSjlmzrMPXTjqAlk&code_challenge_method=S256&clientId=I0kkKsZzvZevErZ3HdzsmGuFB0ADDmoR&response_type=code&redirect_uri=com.arbys.ios.arbysapp%3A%2F%2Flogin.arbys.com%2Fios%2Fcom.arbys.ios.arbysapp%2Fcallback&scope=openid%20offline_access%20email%20profile&connection=firebase-auth&isIDP=true&auth0Client=eyJuYW1lIjoicmVhY3QtbmF0aXZlLWF1dGgwIiwidmVyc2lvbiI6IjIuOC4zIn0%3D")!)
        present(safariViewController, animated: true, completion: nil)
        
    }
    
  
    @objc func closeModal() {
        dismiss(animated: true, completion: nil)
    }



//    @objc func closeModal() {
//        navigationController?.popViewController(animated: true)
//    }




}

