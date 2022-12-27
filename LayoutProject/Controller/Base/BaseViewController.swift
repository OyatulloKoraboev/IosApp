//
//  BaseViewController.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit

enum NavbarPosition {
    case left
    case right
}
class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
    
}

@objc extension BaseViewController {
    func addViews(){
        
    }
    
    func layoutViews(){
        
    }
    
    func configure(){
        view.backgroundColor = Resources.Colors.background
    }
    
    func navBarLeftButtonHandler(){
        print("Left Navbar button tapped")
    }
    
    func navBarRightButtonHandler(){
        print("Right Navbar button tapped")
    }
}

extension BaseViewController {
    func addNavBarButton(at position :NavbarPosition,title:String){
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(size: 17)
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
