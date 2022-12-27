//
//  NavBarViewController.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit

class NavBarViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
       
    }
    

    private func configure(){
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor:Resources.Colors.titlegray,
            .font:Resources.Fonts.helveticaRegular(size: 17)
        ]
        navigationBar.addBottomBorder(with: Resources.Colors.seperator, height: 1)
    }
}
