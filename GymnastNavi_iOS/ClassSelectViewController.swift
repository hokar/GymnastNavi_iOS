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
        // TODO:ClassSelectCell側にenumで定義する
        beginnerCell.delegate = self
        beginnerCell.className.text! = "初心者クラス"
        beginnerCell.classDescription.text! = "幼児レベルから小学校の体育レベルの技を見ることができます。"
//        beginnerCell.imageView = 
        
        professionalCell.delegate = self
        professionalCell.className.text! = "体操競技レベル"
        professionalCell.classDescription.text! = "体操競技レベルの技を見ることができます。"
//        professionalCell.imageView = 
    }
}

extension ClassSelectViewController: ClassSelectCellDelegate {
    func tappedCell(sender: ClassSelectCell) {
        NSLog("tappedCell")
    }
}
