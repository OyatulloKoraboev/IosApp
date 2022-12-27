//
//  BaseView.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 23/12/22.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintView()
        configureAppereance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


@objc extension BaseView {
    func setupViews(){
        
    }
    
    func constraintView(){
        
    }
    
    func configureAppereance(){
        
    }
}
