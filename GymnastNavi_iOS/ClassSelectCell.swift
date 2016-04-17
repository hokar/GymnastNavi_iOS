//
//  ClassSelectCell.swift
//  GymnastNavi_iOS
//
//  Created by 帆苅 隼佑 on 2016/04/17.
//  Copyright (c) 2016年 帆苅 隼佑. All rights reserved.
//

import UIKit

@IBDesignable
class ClassSelectCell : UIView {
    // コードから初期化はここから
    override init(frame: CGRect) {
        super.init(frame: frame)
        comminInit()
    }
    
    // Storyboard/xib から初期化はここから
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        comminInit()
    }
    
    // xibからカスタムViewを読み込んで準備する
    private func comminInit() {
        // ClassSelectCell生成
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "ClassSelectCell", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil).first as! UIView
        addSubview(view)
        
        // サイズ調整
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[view]|",
            options:NSLayoutFormatOptions(rawValue: 0),
            metrics:nil,
            views: bindings))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[view]|",
            options:NSLayoutFormatOptions(rawValue: 0),
            metrics:nil,
            views: bindings))
    }
}
