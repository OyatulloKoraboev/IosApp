//
//  DayView.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 24/12/22.
//

import UIKit
extension WeekView{
    class DayView: BaseView {
        private let label = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func config(with index: Int, and name: String) {
            let startOfWeek = Date().startofweek
            let currenrDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from:currenrDay)
            
            let isToday = currenrDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.background
            
            label.text = name.uppercased()
            label.textColor = isToday ? .white : Resources.Colors.inactive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.inactive
        }
    }
    
}
extension WeekView.DayView {
    override func setupViews() {
        super.setupViews()
        
        addSubview(stackView)
        
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func constraintView() {
        super.constraintView()
        
        stackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    override func configureAppereance() {
        super.configureAppereance()
        backgroundColor = .red
        layer.cornerRadius = 10
        
        stackView.spacing = 5
        stackView.axis = .vertical
        
        label.font = Resources.Fonts.helveticaRegular(size: 15)
        label.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(size: 15)
        dateLabel.textAlignment = .center
    }
}

