//
//  SVProgressHUD+Extension.swift
//  TodayNews
//
//  Created by Shirley on 2019/6/11.
//  Copyright © 2019 Shirley. All rights reserved.
//

import SVProgressHUD

extension SVProgressHUD {
    static func configuration() {
        SVProgressHUD.setForegroundColor(.white)
        SVProgressHUD.setMinimumDismissTimeInterval(1.5)
        SVProgressHUD.setBackgroundColor(UIColor(r: 0, g: 0, b: 0, alpha: 0.3))
        
    }
}
