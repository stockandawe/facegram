//
//  ProfileController.swift
//  Facegram
//
//  Created by Rutul Dave on 2/2/16.
//  Copyright © 2016 Rutul Dave. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    @IBOutlet weak var profilePic:UIImageView!
    @IBOutlet weak var postLabel:UILabel!
    @IBOutlet weak var followersLabel:UILabel!
    @IBOutlet weak var followingLabel:UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let currentUser = Profile.currentUser {
            self.postLabel.text = "\(currentUser.posts.count)"
            self.followersLabel.text = "\(currentUser.followers.count)"
            self.followingLabel.text = "\(currentUser.following.count)"
            if let profPic = currentUser.picture {
                self.profilePic.image = profPic
            }
        } else {
            print("No user is logged in")
        }
    }
    
    @IBAction func editProfile(sender: AnyObject) {
        print("user wants to edit their profile")
    }
}
