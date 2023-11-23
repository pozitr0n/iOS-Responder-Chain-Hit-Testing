//
//  ViewController.swift
//  iOS-ResponderChain-HitTesting
//
//  Created by Raman Kozar on 12/11/2023.
//

import UIKit

class ViewController: UIViewController {

    // Creating 4 views
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        testResponderChainHitTesting()
        
    }
    
    func testResponderChainHitTesting() {
        
        view.backgroundColor = .lightGray
        
        // backgroundColor
        view1.backgroundColor = .red
        view2.backgroundColor = .blue
        view3.backgroundColor = .green
        view4.backgroundColor = .orange
        
        // constraints: cancel default
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        view4.translatesAutoresizingMaskIntoConstraints = false
        
        // IMPORANT!
        
        // with flag isUserInteractionEnabled
        // view2.isUserInteractionEnabled = false
        
        // with flag clipsToBounds
        // view2.clipsToBounds = true
        
        // adding subviews
        view.addSubview(view1)
        view.addSubview(view2)
        
        view1.addSubview(view3)
        view2.addSubview(view4)
        
        // constraints
        NSLayoutConstraint.activate([
        
            view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            view1.heightAnchor.constraint(equalToConstant: 300),
            
            view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 70),
            view2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            view2.heightAnchor.constraint(equalToConstant: 300),
            
            view3.topAnchor.constraint(equalTo: view1.topAnchor, constant: 40),
            view3.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 20),
            view3.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -20),
            view3.heightAnchor.constraint(equalToConstant: 100),
            
            view4.topAnchor.constraint(equalTo: view2.topAnchor, constant: 40),
            view4.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: 20),
            view4.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: -20),
            
            view4.heightAnchor.constraint(equalToConstant: 100)
            // view4.heightAnchor.constraint(equalToConstant: 350)
            
        ])
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer:))))
        
        view1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view1Touched(tapGestureRecognizer:))))
        
        view2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view2Touched(tapGestureRecognizer:))))
        
        view3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view3Touched(tapGestureRecognizer:))))
        
        view4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view4Touched(tapGestureRecognizer:))))
        
    }
    
    @objc func viewTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("gray view touched")
    }
    
    @objc func view1Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("red view 1 touched")
    }
    
    @objc func view2Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("blue view 2 touched")
    }
    
    @objc func view3Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("green view 3 touched")
    }
    
    @objc func view4Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("orange view 4 touched")
    }

}

