//
//  testrootViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/19/22.
//

import UIKit

class testrootViewController: UITableViewController {
    

    override func viewWillAppear(_ animated: Bool) {
    
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func isRoot(){
        
        
        let button1 = UIButton(type: .system)
        if self.navigationBar.backItem == nil {
            button1.setImage(UIImage(named: "ArbyshatWhite"), for: .normal)
        } else {
            button1.setImage(UIImage(systemName: "arrow.backward"), for: .normal)

        }
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
