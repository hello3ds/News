//
//  DongtaiCollectionView.swift
//  TodayNews
//
//  Created by Shirley on 2019/5/31.
//  Copyright © 2019 Shirley. All rights reserved.
//

import UIKit

class DongtaiCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, NibLoadable {
    
    
    var didSelect: ((_ selectedIndex: Int) -> ())?
    /// 是否发布了小视频
    var isPostSmallVideo = false
    
    /// 是否是动态详情
    var isDongtaiDetail = false
    
    var isWeitoutiao = false
    
    var thumbImages = [ThumbImage](){
        didSet {
            reloadData()
        }
    }
    
//    var largeImages = [LargeImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        delegate = self
        dataSource = self
        
        backgroundColor = .clear
        collectionViewLayout = DongtaiCollectionViewFlowLayout()
        
        ym_registerCell(cell: DongtaiCollectionViewCell.self)
        isScrollEnabled = false
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return thumbImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.ym_dequeueReusableCell(indexPath: indexPath) as DongtaiCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    
}

class DongtaiCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func prepare() {
        super.prepare()
        minimumInteritemSpacing = 5
        minimumLineSpacing = 5
    }
    
}
