//
//  testrootViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/19/22.
//

import UIKit

class testrootViewController: UITableViewController {
    

    override func viewWillAppear(_ animated: Bool) {
//        isRoot()
        print("La raiz \(NavegationViewController().navigationBar.backItem == nil)")
        self.navigationController?.navigationBar.backgroundColor = .purple
        NavegationViewController().setUpNavBar()
        print("La raiz aparecio")
    }
    override func viewWillDisappear(_ animated: Bool) {
//        isNotRoot()
        print("La raiz desaparecio")

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func isRoot(){
        
        let nav = NavegationViewController()
        
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
