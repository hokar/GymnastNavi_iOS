//
//  ClassSelectViewController.swift
//  GymnastNavi_iOS
//
//  Created by 帆苅 隼佑 on 2016/04/30.
//  Copyright (c) 2016年 帆苅 隼佑. All rights reserved.
//

import UIKit

class ClassSelectViewController: UIViewController {
    @IBOutlet weak var beginnerCell: ClassSelectCell!
    @IBOutlet weak var professionalCell: ClassSelectCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // セルの設定
        beginnerCell.setClassType(ClassSelectCell.ClassType.Biginner, delegate: self)
        professionalCell.setClassType(ClassSelectCell.ClassType.Professional, delegate: self)
    }
}

extension ClassSelectViewController: ClassSelectCellDelegate {
    func tappedCell(sender: ClassSelectCell) {
        NSLog("tappedCell")
    }
}
