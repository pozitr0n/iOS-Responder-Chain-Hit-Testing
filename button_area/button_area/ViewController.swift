//
//  ViewController.swift
//  button_area
//
//  Created by Raman Kozar on 13/11/2023.
//

import UIKit

class ViewController: UIViewController {

    let openSecondViewControllerButton: UIButton = {
       
        $0.setTitle("Go to second VC", for: .normal)
        $0.backgroundColor = .orange
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 25
        
        return $0
        
    }(UIButton())
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        view.addSubview(openSecondViewControllerButton)
        
        NSLayoutConstraint.activate([
        
            openSecondViewControllerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            openSecondViewControllerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            openSecondViewControllerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            openSecondViewControllerButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        openSecondViewControllerButton.addTarget(self, action: #selector(openSecondViewController), for: .touchUpInside)
        
    }
    
    @objc func openSecondViewController() {
        let secondVC = SecondViewCOntroller()
        self.present(secondVC, animated: true)
    }

}

