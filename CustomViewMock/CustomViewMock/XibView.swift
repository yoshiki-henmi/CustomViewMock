//
//  XibView.swift
//  CustomViewMock
//
//  Created by YOSHI on 2018/10/26.
//  Copyright © 2018年 yoshi. All rights reserved.
//

import UIKit

protocol XibViewDelegate {
    func onTouchedBtn()
}

class XibView: UIView {
    
    @IBOutlet weak var label: UILabel!
    
    var delegate: XibViewDelegate? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibInit()
    }
    
    fileprivate func nibInit() {
        guard let view = UINib(nibName: "XibView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
    }

    @IBAction func button(_ sender: Any) {
        if let dg = self.delegate {
            dg.onTouchedBtn()
        }
    }
}
