//
//  TimerView.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 18/01/23.
//

import UIKit
import SnapKit

class TimerView: BaseView {
    private let progressView:ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 1)
        
        return view
    }()
    
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        addSubview(progressView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        progressView.snp.makeConstraints { make in
            
            make.left.top.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview()
        }
    }
    
    override func configureAppereance() {
        super.configureAppereance()
        
        
    }
}
