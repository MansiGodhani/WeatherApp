//
//  ViewController.swift
//  WeatherApp
//
//  Created by DCS on 21/08/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let welcome:UILabel = {
        let label = UILabel()
        label.text = "Welcome to WeatherApp"
        label.font = UIFont(name: "Copperplate", size: 25.0)
        label.textAlignment = .center
        label.textColor = .cyan
        return label
    }()
    
    private let login : UIButton = {
        let button = UIButton()
        button.setTitle(" Check Weather ", for: .normal)
        button.addTarget(self, action: #selector(goto), for: .touchUpInside)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(welcome)
        view.addSubview(login)
        
        let bckimage = UIImageView(frame: UIScreen.main.bounds)
        bckimage.image = UIImage(named: "bgimg1")
        bckimage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(bckimage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.view.backgroundColor = .white
        welcome.frame = CGRect(x: 30, y:view.safeAreaInsets.top + 40,width: view.width - 60, height: 40)
        login.frame = CGRect(x: 30, y: welcome.bottom + 260, width: view.width - 60, height: 40)
    }
    
    @objc func goto()
    {
        let vc = WeatherVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
