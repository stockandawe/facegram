//
//  PostModel.swift
//  Facegram
//
//  Created by Rutul Dave on 2/2/16.
//  Copyright © 2016 Rutul Dave. All rights reserved.
//

import UIKit

class Post {
    let creator:String
    let timestamp:NSDate
    let image:UIImage?
    let caption:String?
    static var feed:Array<Post>?
    
    init(creator:String, image:UIImage?, caption:String?) {
        self.creator = creator
        self.image = image
        self.caption = caption
        timestamp = NSDate()
    }
}

class PostCell: UITableViewCell {
    @IBOutlet weak var captionLabel:UILabel!
    @IBOutlet weak var imgView:UIImageView!
}
