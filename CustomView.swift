//
//  CustomView.swift
//  GyanMatrixAssignment
//
//  Created by Yash Agarwal on 28/04/22.
//

import Foundation
import UIKit

class CustomView: UIView {
	
	private var bezierPath: UIBezierPath?
	let imageView = UIImageView();
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)!
		setup()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}
	
	private func setup() {
		addSubview(imageView)
	}
	
	override func draw(_ rect: CGRect) {
	}
	
	override func layoutSubviews() {
		
		super.layoutSubviews()
		
		let path: UIBezierPath = UIBezierPath()
		
		path.move(to: CGPoint(x: 50, y: 10))
		
		path.addLine(to: CGPoint(x: 260, y: 10))
		
		path.addArc(withCenter: CGPoint(x: 290, y: 20), radius: 10, startAngle: CGFloat(Double.pi/2 * 3), endAngle: 0, clockwise: true)
		
		path.addLine(to: CGPoint(x: 300, y: 450))
		
		path.addArc(withCenter: CGPoint(x: 290, y: 480), radius: 10, startAngle: CGFloat(0), endAngle: CGFloat(Double.pi/2), clockwise: true)
		
		path.addLine(to: CGPoint(x: 90, y: 490))
		
		path.addArc(withCenter: CGPoint(x: 90, y: 480), radius: 10, startAngle: CGFloat(Double.pi/2), endAngle: CGFloat(Double.pi), clockwise: true)
		
		path.addLine(to: CGPoint(x: 80, y: 420))
		
		path.addArc(withCenter: CGPoint(x: 70, y: 430), radius: 10, startAngle: 0, endAngle: CGFloat(Double.pi/2*3), clockwise: false)
		
		path.addLine(to: CGPoint(x: 20, y: 420))
		
		path.addArc(withCenter: CGPoint(x: 20, y: 410), radius: 10, startAngle: CGFloat(Double.pi/2), endAngle: CGFloat(Double.pi), clockwise: true)
		
		path.addLine(to: CGPoint(x: 10, y: 340))
		
		path.addLine(to: CGPoint(x: 10, y: 50))
		
		
		path.addArc(withCenter: CGPoint(x: 20, y: 20), radius: 10, startAngle: CGFloat(Double.pi), endAngle: CGFloat(Double.pi/2 * 3), clockwise: true)
		
		
		path.move(to: CGPoint(x: 24, y: 320))
		
		path.addLine(to: CGPoint(x: 286, y: 320))
		
		path.close()
		
		imageView.frame = bounds
		imageView.image = UIImage(named: "tower")
		let maskLayer = CAShapeLayer()
		maskLayer.path = path.cgPath
		imageView.layer.mask = maskLayer
		
		bezierPath = path
		setNeedsDisplay()
	}
}
