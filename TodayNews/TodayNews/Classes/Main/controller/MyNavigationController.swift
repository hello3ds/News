//
//  MyNavigationController.swift
//  TodayNews
//
//  Created by Shirley on 2019/5/27.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit
import SwiftTheme

class MyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigationBar = UINavigationBar.appearance()
        navigationBar.theme_tintColor = "colors.black"
        navigationBar.setBackgroundImage(UIImage(named: "navigation_background" + (UserDefaults.standard.bool(forKey: isNight) ? "_night" : "")), for: .default)

        NotificationCenter.default.addObserver(self, selector: #selector(receiveDayOrNightButtonClicked ), name: NSNotification.Name(rawValue: "dayOrNightButtonClicked"), object: nil)
        


        // Do any additional setup after loading the view.
    }
    
    /// 接收到了按钮点击的通知
    @objc func receiveDayOrNightButtonClicked(notification: Notification) {
        // 设置为夜间/日间
        navigationBar.setBackgroundImage(UIImage(named: "navigation_background" + (notification.object as! Bool ? "_night" : "")), for: .default)
    }
    
    // 拦截 push 操作
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "lefterbackicon_titlebar_24x24_"), style: .plain, target: self, action: #selector(navigationBack))
//            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "lefterbackicon_titlebar_24x24_"), style: .plain, target: self, action: #selector(getter: navigationBar))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    /// 返回上一控制器
    @objc private func navigationBack() {
        popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
