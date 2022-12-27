//
//  BaseInfoView.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 26/12/22.
//


import UIKit
import SnapKit

class BaseInfoView:BaseView{
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Test".uppercased()
        label.font = Resources.Fonts.helveticaRegular(size: 13)
        label.textColor = Resources.Colors.inactive
        
        return label
    }()
    
    
    private let button = WAButton(type: .primary, with: "Last 7 days", with: Resources.Images.common.down_arrow!)
    
    private let content:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resources.Colors.seperator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
         
        return view
    }()
    
    init(title:String? = nil, buttonTitle:String? = nil) {
       
        
        label.text = title?.uppercased()
        label.textAlignment = buttonTitle == nil ? .center : .left
        button.setTitle(buttonTitle, for: .normal)
        button.isHidden = buttonTitle == nil ? true : false
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addButtonTarget(target:Any?,action:Selector){
        button.addTarget(action, action: action, for: .touchUpInside)
    }
    
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        addSubview(label)
        addSubview(content)
        addSubview(button)
    }
    override func constraintView() {
        super.constraintView()
        
        label.snp.makeConstraints { make in
            make.top.right.left.equalToSuperview()
        }
        
        content.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(10)
            make.left.right.bottom.equalToSuperview()
            
        }
        
        button.snp.makeConstraints { make in
            make.centerY.equalTo(label.snp.centerY)
            make.right.equalToSuperview()
            make.width.equalTo(130)
            make.height.equalTo(30)
        }
    }
    override func configureAppereance() {
        super.configureAppereance()
        makeSystem(button: button)
         
        backgroundColor = .clear
    }
}
