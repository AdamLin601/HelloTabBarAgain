//
//  NewViewController.swift
//  HelloTabBarAgain
//
//  Created by 林奕德 on 2018/3/27.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var messageFromViewOne:String?
    
    @IBAction func ok(_ sender: UIButton) {
        if let inputText = myTextInput.text{
            print(inputText)
            myTextInput.text = ""
            myTextInput.resignFirstResponder()//resign(辭職)
            if  let firstViewControllers = self.tabBarController?.viewControllers?[0]as?ViewController{//as? 轉型
            firstViewControllers.myLable.text = inputText
                self .tabBarController?.selectedIndex = 0 //選到編號0成員（頁面）
            }
        }
        
    }
    @IBOutlet weak var myTextInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextInput.text = messageFromViewOne
     
    }
    override func viewDidAppear(_ animated: Bool) { //ao
        super.viewDidAppear(animated) //每次更新一到頁面
         myTextInput.becomeFirstResponder()//轉成焦點
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
