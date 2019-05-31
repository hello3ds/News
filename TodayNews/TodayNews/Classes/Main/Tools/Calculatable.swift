//
//  Calculatable.swift
//  TodayNews
//
//  Created by Shirley on 2019/5/31.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit


protocol Calculatable {
    // MARK: 计算宽度
    static func collectionViewWidth(_ count: Int) -> CGFloat
    // MARK: 计算高度
    static func collectionViewHeight(_ count: Int) -> CGFloat
    // MARK: 计算collectionViewcell 的大小
    static func collectionViewCellSize(_ count: Int) -> CGSize
    // MARK: 计算富文本的高度
    static func attributedTextHeight(text: NSAttributedString, width: CGFloat) -> CGFloat

    // MARK: 计算文本的高度
    static func textHeight(text: String, fontSize: CGFloat,width: CGFloat) -> CGFloat
    // MARK: 计算文本的宽度
    static func textWidth(text: String, fontSize:CGFloat, height: CGFloat) -> CGFloat
//    // MARK: 从文本内容中获取 uid 和y 用户名
//    static func richContents(from content: String, idPattern:String, titlePattern: String) -> [RichContent]
//    // MARK: 计算详情里的collectionViewCell 的大小
//    static func detailCollectionViewCellSize(_ thumbImages: [ThumbImage]) -> CGSize
//    // MARK: 计算详情里的高度
//    static func detailCollectionViewHeight (_thumbImages: [ThumbImage]) -> CGFloat
}


extension Calculatable{
    /// 计算高度
//    static func detailCollectionViewHeight(_ thumbImages: [ThumbImage]) -> CGFloat{
//        switch thumbImages.count{
//        case <#pattern#>:
//            <#code#>
//        default:
//            <#code#>
//        }
//    }
}
