//
//  ProgressView.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 18/01/23.
//

import UIKit
extension TimerView{
    class ProgressView: UIView {
    
        func drawProgress(with percent:CGFloat){
            let cirleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
            let radius = cirleFrame / 2
            let center = CGPoint(x: radius, y: radius)
            let startAngle = -CGFloat.pi * 7 / 6
            let endAngle = CGFloat.pi * 1 / 6
            
            
            let circlePath = UIBezierPath(arcCenter: center,
                                          radius: radius,
                                          startAngle: startAngle,
                                          endAngle: endAngle,
                                          clockwise: true)
            
            let circleLayer = CAShapeLayer()
            circleLayer.path = circlePath.cgPath
            circleLayer.strokeColor = Resources.Colors.active.cgColor
            circleLayer.lineWidth = 20
            circleLayer.strokeEnd = percent
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineCap = .round
            
            layer.addSublayer(circleLayer)
        }
    }
}
