//
//  SecondaryButton.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit
import SnapKit

public enum WAButtonType {
    case primary
    case secondary
}

class WAButton: UIButton {
    private let label:UILabel = {
        let label = UILabel()
        
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    private let iconView = UIImageView()
    private var type = WAButtonType.primary
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
        
        
    }
    
    init(type:WAButtonType,with title: String,with image:UIImage) {
        self.type = type
        label.text = title
        iconView.image = image
        
        super.init(frame: .zero)
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        self.type = .primary
        super.init(frame: .zero)
        addViews()
        layoutViews()
        configure()
        
    }
    
    func setTitleToButton(title:String){
        label.text = title
    }
}

extension WAButton {
    func addViews(){
        addSubview(label)
        addSubview(iconView)
    }
    
    func layoutViews(){
        iconView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-12)
            
            make.centerY.equalTo(label)
            make.height.equalTo(5)
            make.width.equalTo(10)
            
        }
        
        label.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview().inset(12)
            make.right.equalTo(iconView).offset(-12)
            make.width.equalTo(100)
            make.height.equalTo(10)

            
        }
    }
    
    func configure(){
        backgroundColor = Resources.Colors.active
        layer.cornerRadius = 14
        
        switch type{
            
        case .primary:
                
                label.textColor = Resources.Colors.inactive
                label.font = Resources.Fonts.helveticaRegular(size: 15)
                iconView.image = Resources.OverViewController.Images.allWorkOutImage?.withRenderingMode(.alwaysTemplate)
                iconView.tintColor = Resources.Colors.inactive
                
        case .secondary:
                
                label.textColor = Resources.Colors.active
                layer.cornerRadius = 14
                label.font = Resources.Fonts.helveticaRegular(size: 13)
                iconView.image = Resources.OverViewController.Images.allWorkOutImage?.withRenderingMode(.alwaysTemplate)
                iconView.tintColor = Resources.Colors.active
        }
        makeSystem(button: self)
    }
    
    
}
