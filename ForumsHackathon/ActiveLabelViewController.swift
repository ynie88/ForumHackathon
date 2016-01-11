//
//  ActiveLabelViewController.swift
//  ForumsHackathon
//
//  Created by Yuchen Nie on 1/11/16.
//  Copyright © 2016 WeddingWire. All rights reserved.
//

import UIKit
import SnapKit
import ActiveLabel

class ActiveLabelViewController: UIViewController {
    private lazy var activeLabel:ActiveLabel = {
        let label = ActiveLabel(frame: .zero)
        label.numberOfLines = 0
        label.lineBreakMode = .ByWordWrapping
        label.text = "This is a post with #hashtags and a @userhandle. #hashtags #tagsOnTags #Quarterback"
        label.textColor = .blackColor()
        label.font = baseFont.large()
        label.handleHashtagTap({ (string) -> () in
            print("hashtag string tapped \(string)")
        })
        
        label.handleMentionTap({ (string) -> () in
            print("mention string tapped \(string)")
        })
        self.view.addSubview(label)
        return label
    }()
    
    override func viewDidLoad() {
        self.view.setNeedsUpdateConstraints()
        self.view.updateConstraintsIfNeeded()
        super.viewDidLoad()
    }
    
    override func updateViewConstraints() {
        activeLabel.snp_updateConstraints { (make) -> Void in
            make.center.equalTo(self.view)
            make.leading.equalTo(self.view).offset(20)
            make.trailing.equalTo(self.view).offset(-20)
        }
        
        super.updateViewConstraints()
    }
}
