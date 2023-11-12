//
//  SecondViewCOntroller.swift
//  button_area
//
//  Created by Raman Kozar on 13/11/2023.
//

import UIKit

class SecondViewCOntroller: UIViewController {

    // Was
    // let closeButton = UIButton()
    
    // Actual
    let closeButton = CustomButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        closeButton.setTitle("x", for: .normal)
        closeButton.setTitleColor(.black, for: .normal)
        closeButton.frame = CGRect(x: 200, y: 200, width: 10, height: 10)
        
        view.addSubview(closeButton)
        
        closeButton.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
        
    }
    
    @objc func closeVC() {
        self.dismiss(animated: true)
    }

}

class CustomButton: UIButton {
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return bounds.insetBy(dx: -30, dy: -30).contains(point)
    }
    
}
