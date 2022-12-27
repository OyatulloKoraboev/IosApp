//
//  SessionViewController.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit

class SessionViewController: BaseViewController {

    let timerView:BaseInfoView = {
        let view = BaseInfoView(title: "Test", buttonTitle: "Press me")
        
        return view
    }()
     
    override func viewDidLoad() {
        addViews()
        layoutViews()
        configure()
    }
    

}

extension SessionViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(timerView)
        
    }
    override func layoutViews() {
        super.layoutViews()
        
        timerView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(300)
            
            
        }
    }
    
    override func configure() {
        super.configure()
        
        title = "High Intensity Cardi"
        navigationController?.tabBarItem.title = "Session"
        addNavBarButton(at: .left, title: "Pause")
        addNavBarButton(at: .right, title: "Finish")
        
        
    }
}
