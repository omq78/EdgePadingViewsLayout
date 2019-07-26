//
//  ViewController.swift
//  EdgePadingViewsLayout
//
//  Created by Omar Alqabbani on 7/26/19.
//  Copyright © 2019 OmarALqabbani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let purpleView = UIView()
        purpleView.backgroundColor = UIColor.purple
        view.addSubview(purpleView)
        purpleView.fillSuperView()
        
        
        let redView = UIView()
        let blueView = UIView()
        let greenView = UIView()
        
        redView.backgroundColor = UIColor.red
        blueView.backgroundColor = UIColor.blue
        greenView.backgroundColor = UIColor.green

        
        [redView, blueView, greenView].forEach { (v) in
            view.addSubview(v)
        }
        redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: nil, right: view.rightAnchor, bottom: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 12), size: .init(width: 125, height: 0))
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        
        blueView.anchor(top: redView.bottomAnchor, left: nil, right: view.rightAnchor, bottom: nil, padding: .init(top: 12, left: 0, bottom: 0, right: 12))
        blueView.copySize(view: redView)
        
        greenView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: redView.leftAnchor, bottom: blueView.bottomAnchor, padding: .init(top: 0, left: 12, bottom: 0, right: 12))
    }


}

