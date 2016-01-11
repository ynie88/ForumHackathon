//
//  ForumUserView.swift
//  ForumsHackathon
//
//  Created by Yuchen Nie on 1/11/16.
//  Copyright © 2016 WeddingWire. All rights reserved.
//

import UIKit
import SnapKit

class ForumUserView : UIView {
    private lazy var containerProfilePic: UIView = {
        let _container = UIView(frame: .zero)
        self.addSubview(_container)
        return _container
    }()
    
    private lazy var avatarView:UIImageView = {
        let _image = UIImage(named: "")
        
        let imageView = UIImageView(image: _image)
        imageView.contentMode = .ScaleAspectFit
        self.containerProfilePic.addSubview(imageView)
        return imageView
    }()
    
    private lazy var nameLabel:UILabel={
        let label = UILabel(frame: .zero)
        label.font = baseFont.small()
        label.textColor = UIColor.lightGrayColor()
        label.text = "Name Label"
        self.addSubview(label)
        return label
    }()
    
    private lazy var dateLabel:UILabel={
        let label = UILabel(frame: .zero)
        label.font = baseFont.small()
        label.textColor = UIColor.lightGrayColor()
        label.text = "Date Label"
        self.addSubview(label)
        return label
    }()
    
    override func updateConstraints() {
        containerProfilePic.snp_updateConstraints { (make) -> Void in
            make.leading.equalTo(self).offset(20)
            make.width.equalTo(50)
            make.height.equalTo(containerProfilePic.snp_width)
            make.top.equalTo(self).offset(20)
        }
        
        nameLabel.snp_updateConstraints { (make) -> Void in
            make.top.equalTo(containerProfilePic)
            make.leading.equalTo(containerProfilePic.snp_trailing).offset(10)
            make.trailing.equalTo(self).offset(20)
        }
        
        dateLabel.snp_updateConstraints { (make) -> Void in
            make.leading.equalTo(nameLabel)
            make.trailing.equalTo(nameLabel)
            make.bottom.equalTo(self).offset(-20)
            make.top.equalTo(nameLabel.snp_bottom).offset(15)
        }
        
        super.updateConstraints()
    }
}
