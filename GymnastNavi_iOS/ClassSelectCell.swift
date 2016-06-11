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

    struct Class {
        var id: Int
        var image: UIImage?
        var className: String
        var classDescription: String
    }

    enum ClassType {
        case Biginner
        case Professional
        
        func classType() -> Class {
            switch self {
            case .Biginner:
                return Class(id: 0, image: nil, className: "初心者クラス", classDescription: "幼児レベルから小学校の体育レベルの技を見ることができます。")
            case .Professional:
                return Class(id: 1, image: nil, className: "体操競技クラス", classDescription: "体操競技レベルの技を見ることができます。")
            }
        }
    }
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var className: UILabel!
    @IBOutlet private weak var classDescription: UILabel!
    
    var id: Int! = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private var view: UIView?
    
    private func setup() {
        // ClassSelectCell生成
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "ClassSelectCell", bundle: bundle)
        view = nib.instantiateWithOwner(self, options: nil).first as? UIView
        addSubview(view!)
        
        // サイズ調整
        view!.setTranslatesAutoresizingMaskIntoConstraints(false)
        let bindings = ["view": view!]
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
        view!.backgroundColor = UIColor.tappedHighLightColor()
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        view!.backgroundColor = UIColor.whiteColor()
        
    }
}

extension ClassSelectCell {
    func setClassType(type: ClassType, cellTapped: () -> Void) {
        var clazz = type.classType()
        id = clazz.id
        className.text = clazz.className
        classDescription.text = clazz.classDescription
        //        imageView.image = clazz.image
    }
}

