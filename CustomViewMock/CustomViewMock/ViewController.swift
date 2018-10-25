//
//  ViewController.swift
//  CustomViewMock
//
//  Created by YOSHI on 2018/10/26.
//  Copyright © 2018年 yoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XibViewDelegate {

    @IBOutlet weak var xibView: XibView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        xibView.delegate = self
        xibView.label.text = "--:--"
    }

    func onTouchedBtn() {
        xibView.label.text = "23:59"
    }
}

