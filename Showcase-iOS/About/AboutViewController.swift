//
//  AboutViewController.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = "About"
    }
    
    @IBAction func websiteTapped(_ sender: Any) {
        UIApplication.shared.open(SocialMediaEndpoint.website.url, options: [:], completionHandler: nil)
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        UIApplication.shared.open(SocialMediaEndpoint.twitter.url, options: [:], completionHandler: nil)
    }
    
    @IBAction func facebookTapped(_ sender: Any) {
        UIApplication.shared.open(SocialMediaEndpoint.facebook.url, options: [:], completionHandler: nil)
    }
    
    @IBAction func instagramTapped(_ sender: Any) {
        UIApplication.shared.open(SocialMediaEndpoint.instagram.url, options: [:], completionHandler: nil)
    }
    
}
