//
//  ForumHeaderView.swift
//  ForumsHackathon
//
//  Created by Yuchen Nie on 1/11/16.
//  Copyright © 2016 WeddingWire. All rights reserved.
//

import UIKit
import SnapKit

class ForumHeaderView: UIView {
    static let identifier = "ForumHeaderView"
    
    private lazy var userView:ForumUserView = {
        let userView = ForumUserView()
        self.addSubview(userView)
        return userView
    }()
    
    private lazy var contentLabel:UILabel = {
        let label = UILabel()
        label.font = baseFont.regular()
        label.textColor = UIColor.blackColor()
        label.text = "content label"
        self.addSubview(label)
        return label
    }()
    
    private lazy var imageContainer:UIView = {
        let container = UIView(frame: .zero)
        self.addSubview(container)
        return container
    }()
    
    private lazy var contentImageView:UIImageView = {
        let content = UIImage(named: "")
        
        let imageView = UIImageView(frame: .zero)
        imageView.image = content
        imageView.contentMode = .ScaleAspectFit
        self.imageContainer.addSubview(imageView)
        return imageView
    }()
    
    override func updateConstraints() {
        userView.snp_updateConstraints { (make) -> Void in
            make.leading.equalTo(self)
            make.top.equalTo(self)
            make.trailing.equalTo(self)
        }
        
        contentLabel.snp_updateConstraints { (make) -> Void in
            make.leading.equalTo(self).offset(20)
            make.trailing.equalTo(self).offset(-20)
            make.top.equalTo(userView.snp_bottom)
        }
        
        imageContainer.snp_updateConstraints { (make) -> Void in
            make.centerX.equalTo(self)
            make.top.equalTo(contentLabel.snp_bottom)
            make.height.equalTo(150)
            make.width.equalTo(imageContainer.snp_height)
            make.bottom.equalTo(self).offset(-20)
        }
        
        contentImageView.snp_updateConstraints { (make) -> Void in
            make.edges.equalTo(imageContainer)
        }
        
        super.updateConstraints()
    }

}
