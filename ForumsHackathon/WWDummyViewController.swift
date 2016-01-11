//
//  WWDummyViewController.swift
//  ForumsHackathon
//
//  Created by Yuchen Nie on 1/8/16.
//  Copyright © 2016 WeddingWire. All rights reserved.
//

import UIKit
import SnapKit

class WWDummyViewController: UIViewController {

    private lazy var label:UILabel = {
        let _label = UILabel(frame: .zero)
        _label.backgroundColor = UIColor.lightGrayColor()
        _label.font = UIFont.systemFontOfSize(21, weight: 4.0)
        _label.text = "Dummy view controller"
        self.view.addSubview(_label)
        return _label
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        print("init")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        view.backgroundColor = UIColor.whiteColor()
        self.view.setNeedsUpdateConstraints()
        self.view.updateConstraintsIfNeeded()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func updateViewConstraints() {
        label.snp_updateConstraints { (make) -> Void in
            make.center.equalTo(self.view)
        }
        
        super.updateViewConstraints()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
