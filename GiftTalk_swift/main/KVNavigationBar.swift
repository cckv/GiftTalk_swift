//
//  KVNavigationBar.swift
//  GiftTalk_swift
//
//  Created by OpenCom on 16/5/4.
//  Copyright © 2016年 cckv. All rights reserved.
//

import UIKit

class KVNavigationBar: UINavigationBar {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setItem()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setItem(){
        
        for index in 1...5{
            let btn = KVTabBarButton()
            btn.tag = index
            btn.setImage(UIImage(named: "TabBar_home"), forState: .Normal)
            btn.setImage(UIImage(named: "TabBar_home_selected"), forState: .Selected)
            addSubview(btn)
            btn.addTarget(self, action: "click:", forControlEvents: .TouchUpInside)
            
            btn.setTitle("首页", forState: .Normal)
            btn.titleLabel?.textAlignment = .Center
            btn.titleLabel?.font = UIFont(name: "首页", size: 11)
            if index == 0{
                click(btn)
            }
//            btn.titleLabel.textAlignment = NSTextAlignmentCenter;
//            //        btn.font = [UIFont systemFontOfSize:11];
//            btn.titleLabel.font = [UIFont systemFontOfSize:11];
//            
//            if(i == 0)
//            {
//                [self btnClick:btn];
//            }
        }
        
    }
    
    func click(btn:KVTabBarButton){
        
        
    }
    
  
}

protocol KVNavigationBarDelegate{
    
    func didClickIndex(index:Int)
    
    
    var delegate :KVNavigationBarDelegate{get}
    
    
    
}