//
//  ViewController.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 21/12/22.
//

import UIKit
import SnapKit

class OverviewController: BaseViewController {
    
//    private let allWorkOuts = SecondaryButton()
    private let navbar = OverviewNavbar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(navbar)
        
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        navbar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(123)
            make.left.equalTo(view)
            make.right.equalTo(view)
        }
        
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        
    }
}


