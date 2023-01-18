//
//  WeekView.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 24/12/22.
//

import UIKit

class WeekView: BaseView {
    private var stackView = UIStackView()
    private let calendar = Calendar.current
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        addSubview(stackView)
        
    }
    
    override func constraintView() {
        super.constraintView()
     
        stackView.snp.makeConstraints { (make) -> Void in
            make.edges.equalToSuperview()
        }
    }
        
    override func configureAppereance() {
        super.configureAppereance()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
       
        let weekdays = calendar.shortStandaloneWeekdaySymbols
        weekdays.enumerated().forEach { index,name in
            let days = DayView()
            days.config(with: index, and: name)
            stackView.addArrangedSubview(days)
        }
    }
}
