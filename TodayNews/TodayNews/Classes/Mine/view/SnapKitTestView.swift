
//
//  SnapKitTestView.swift
//  TodayNews
//
//  Created by Shirley on 2019/6/1.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit

class SnapKitTestView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

//    let view1 = UIView()
//
////    view1.backgroundColor = UIColor.black
//
//    addSubview(view1)
//    v
//    view1.snp.makeConstraints {
//    $0.width.equalTo(200)
//    $0.height.equalTo(200)
//    $0.center.equalTo(self.view)
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let view = UIView()
        addSubview(view)
        
    }
    
    private lazy var view: UIView = {
        
        let uiview = UIView()
        
        
//        let publishButton = UIButton(type: .custom)
//        publishButton.theme_setBackgroundImage("images.tab_redpackage_big_64x44_", forState: .normal)
//        publishButton.theme_setBackgroundImage("images.tab_redpackage_big_press_64x44_", forState: .selected)
//        publishButton.sizeToFit()
//        return publishButton
        return uiview
    }()
}
