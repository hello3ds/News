//
//  HomeViewController.swift
//  TodayNews
//
//  Created by Shirley on 2019/5/27.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit
import RxSwift

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let taps: Array<Void> = [(),(),()]
        
        taps.forEach { () in
            print("asfasfd")
        }
        
//        let button = UIButton(type: .custom)
        
        
        let values = [2.0,4.0,5.0,7.0]
        let squares2 = values.map({
            (value: Double) -> Double in
            print(value * value)
            return value * value
        })
        print(squares2)
        let squares3 = values.map({($0) * ($0)})
        print(squares3)
        
        _ = values.map({
            (name: Double) -> Double in
            print(name * name)
//            return name * name
            return name * name
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
