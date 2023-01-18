//
//  OverviewNavbar.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 23/12/22.
//

import UIKit
import SnapKit

class OverviewNavbar:BaseView{
    private let label = UILabel()
    private let allWorkOuts = WAButton(type: .primary, with: "All Workouts", with: Resources.Images.common.down_arrow!)
    private let addButton = UIButton()
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        addBottomBorder(with: Resources.Colors.seperator, height: 1)
    }
}

extension OverviewNavbar {
    override func setupViews() {
        super.setupViews()
        addSubview(label)
        addSubview(allWorkOuts)
        addSubview(addButton)
        addSubview(weekView)
    }
    
    override func constraintView() {
        super.constraintView()
        
        label.snp.makeConstraints { make in
        
            make.centerY.equalTo(allWorkOuts)
            make.left.equalToSuperview().offset(15)
        }
        
        allWorkOuts.snp.makeConstraints { make in
            
            make.right.equalTo(addButton.snp.left).offset(-15)
            make.centerY.equalTo(addButton.snp.centerY)
            
        }
        
        addButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-15)
            
            make.height.equalTo(28)
            make.width.equalTo(28)
        }
        
        weekView.snp.makeConstraints { make in
            make.top.equalTo(addButton.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-15)
        }
        
    }
    
    override func configureAppereance() {
        super.configureAppereance()
        backgroundColor = .white
        
        label.text = Resources.OverViewController.Strings.navText
        label.textColor = Resources.OverViewController.Colors.buttonTextColor
        label.font = Resources.Fonts.helveticaRegular(size: 22)
        

        allWorkOuts.backgroundColor = Resources.OverViewController.Colors.buttonColor
        allWorkOuts.layer.cornerRadius = 15
        allWorkOuts.addTarget(self, action: #selector(allWorkoutsButtonAction), for: .touchUpInside)
        
        addButton.setImage(Resources.OverViewController.Images.addButtonImage, for: .normal)
        

    }
    
    @objc func allWorkoutsButtonAction(){
        print("All Workouts Button Pressed")
    }
}

