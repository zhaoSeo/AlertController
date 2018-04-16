//
//  ViewController.swift
//  AlertController
//
//  Created by Sang won Seo on 2018. 4. 16..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다.", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "종료", style: .default, handler: { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
        })
        //후행 클로져 let okAction = UIAlertAction(title: "종료", style: .default, {(action: UIAlertAction) -> Void in
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        })
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        
        present(myAlert, animated: true, completion: nil)
    }
}

