//
//  KVTabBarButton.swift
//  GiftTalk_swift
//
//  Created by OpenCom on 16/5/4.
//  Copyright © 2016年 cckv. All rights reserved.
//

import UIKit

class KVTabBarButton: UIButton {

    let width = UIScreen.mainScreen().bounds.width
    let height = UIScreen.mainScreen().bounds.height
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.tintColor = UIColor.redColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func imageRectForContentRect(contentRect: CGRect) -> CGRect {
        let y = frame.height * 0.6
        return CGRectMake(0, y, frame.width, frame.height)
    }
    
    override func titleRectForContentRect(contentRect: CGRect) -> CGRect {
        let y = frame.height * 0.4
        return CGRectMake(0, y, frame.width, frame.height)
    }
}
