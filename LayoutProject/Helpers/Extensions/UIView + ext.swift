//
//  UIView + ext.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit

extension UIView {
    func addBottomBorder(with color:UIColor,height:CGFloat){
        
        let seperator = UIView()
        seperator.backgroundColor = color
        seperator.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        seperator.frame = CGRect(x:0 ,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        
        addSubview(seperator)
    }
    
    func makeSystem(button:UIButton){
        
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragOutside,
            .touchDragExit
            
        ])
    }
    
    @objc func handleIn(){
        UIView.animate(withDuration: 0.15) { 
            self.alpha = 0.55
        }
    }
    
    @objc func handleOut(){
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
}
