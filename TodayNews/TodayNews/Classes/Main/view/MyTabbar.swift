//
//  MyTabbar.swift
//  TodayNews
//
//  Created by Shirley on 2019/5/27.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit

class MyTabbar: UITabBar {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        theme_tintColor = "color.tabbarTintColor"
        theme_barTintColor = "colors.cellBackgroundColor"
        addSubview(publishButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var publishButton: UIButton = {
        let publishButton = UIButton(type: .custom)
        publishButton.theme_setBackgroundImage("images.tab_redpackage_big_64x44_", forState: .normal)
        publishButton.theme_setBackgroundImage("images.tab_redpackage_big_press_64x44_", forState: .selected)
        publishButton.sizeToFit()
        return publishButton
        
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        /// 设置当前tabbar 的高度和宽度
        let width = frame.width
        let height:CGFloat = 49
        
        
        publishButton.center = CGPoint(x: width * 0.5, y: height * 0.5 - 7)

        
        /// 设置其他按钮的frame
        let buttonW: CGFloat = width * 0.2
        let buttonH: CGFloat = height
        let buttonY: CGFloat = 0
        
        var index = 0
        for button in subviews {
            if !button.isKind(of: NSClassFromString("UITabBarButton")!){
                continue
            }
            let buttonX = buttonW * (index > 1 ? CGFloat(index + 1) : CGFloat(index))
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            index += 1
            
        }
        
        
        
    }
    
}
