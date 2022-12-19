//
//  TesterViewController.swift
//  SoloProject
//
//  Created by Consultant on 12/18/22.
//

import UIKit

class TesterViewController: UIViewController {

   

      override func viewDidLoad() {
        super.viewDidLoad()

        // Agregamos un botón de vuelta a la izquierda del NavigationBar
        let backButton = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(backButtonTapped))
        navigationItem.leftBarButtonItem = backButton

        // Agregamos dos botones a la derecha del NavigationBar
        let rightButton1 = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: #selector(rightButton1Tapped))
        let rightButton2 = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .plain, target: self, action: #selector(rightButton2Tapped))
        navigationItem.rightBarButtonItems = [rightButton1, rightButton2]
      }

      @objc func backButtonTapped() {
        // Acción para volver a la vista anterior
      }

      @objc func rightButton1Tapped() {
        // Acción para el botón del centro
      }

      @objc func rightButton2Tapped() {
        // Acción para el botón de la derecha
      }
    }



