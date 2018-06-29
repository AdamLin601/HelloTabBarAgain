//
//  ViewController.swift
//  HelloTabBarAgain
//
//  Created by 林奕德 on 2018/3/27.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       myLable.text = "First View"
        if let secondViewController = self.tabBarController? .viewControllers?[1] as?NewViewController{
            secondViewController.messageFromViewOne = "Hi"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

