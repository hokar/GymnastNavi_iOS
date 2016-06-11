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
        beginnerCell.setClassType(ClassSelectCell.ClassType.Biginner, cellTapped: { _ in
            print("tapped beginner cell")
        })
        professionalCell.setClassType(ClassSelectCell.ClassType.Professional, cellTapped: { _ in
            print("tapped professional cell")
        })
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SkillList" {
            let controller = segue.destinationViewController as! GymnasticsNaviViewController
            controller.identifier = "てすと"
        }
    }
}
