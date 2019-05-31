//
//  SettingModel.swift
//  TodayNews
//
//  Created by Shirley on 2019/5/31.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit
import Foundation
import HandyJSON

struct SettingModel: HandyJSON {
    var title: String = ""
    var subtitle: String = ""
    var rightTitle: String = ""
    var isHiddenSubtitle: Bool = false
    var isHiddenRightTitle: Bool = false
    var isHiddenSwitch: Bool = false
    var isHiddenRightArrow: Bool = false
    
    
}
