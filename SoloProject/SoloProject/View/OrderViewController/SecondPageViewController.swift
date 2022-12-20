//
//  SecondPageViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/18/22.
//

import UIKit

class SecondPageViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
//        isRoot()
        print("La raiz")
        print("La raiz desaparecio \(DealsNavegationViewController().navigationBar.backItem == nil)")
        self.tabBarController?.accessibilityElementCount()
        print( "La raiz desaparecio \(self.navigationController?.navigationBar)")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()}
//    }
    
//    @objc func backButtonTapped() {
//        print("Tiene que regresar")
//    
//        self.navigationController?.popViewController(animated: true)
//  }

}
