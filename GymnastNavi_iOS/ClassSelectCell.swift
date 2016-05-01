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
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classDescription: UILabel!
    
    weak var delegate: ClassSelectCellDelegate! = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    // これを実装しないとエラーになる
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
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
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
//        self.backgroundColor = UIColor.tappedHighLightColor()
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
//        self.backgroundColor = UIColor.whiteColor()
        
        delegate?.tappedCell(self)
    }
}

protocol ClassSelectCellDelegate: class {
    func tappedCell(sender: ClassSelectCell)
}
