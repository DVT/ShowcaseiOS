//
//  AboutViewController.swift
//  Showcase-iOS
//
//  Created by Lehlohonolo Mbele on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    //MARK: Properties
    
    var aboutPresenter: AboutPresentable?
    var aboutViewModel: AboutViewModel?
    var firebaseStorage: FIRStoring?
    var errorView: ErrorView?
    let dependencyContainer = DependencyContainer.container()
    
    // MARK: @IBOutlets
    
    @IBOutlet weak var loadingView: LoadingView!
 
    @IBOutlet weak var socialMediaStackView: UIStackView!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "About"
        setupInjectables()
        aboutPresenter?.retrieveSocialMediaLinks()
    }
    
    //MARK: Opertaions
    
    func setupInjectables() {
        let aboutPresenter = dependencyContainer.resolve(AboutPresentable.self) as? AboutPresenter
        let firebaseStorage = dependencyContainer.resolve(FIRStoring.self)
        self.aboutPresenter = aboutPresenter
        aboutPresenter?.aboutView = self
        self.firebaseStorage = firebaseStorage
    }
    
    // MARK: @IBActions
    
    @IBAction func websiteTapped(_ sender: Any) {
        if let websiteUrl = aboutViewModel?.website {
            UIApplication.shared.open(websiteUrl, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        if let twitterUrl = aboutViewModel?.twitter {
            UIApplication.shared.open(twitterUrl, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func facebookTapped(_ sender: Any) {
        if let facebookUrl = aboutViewModel?.facebook {
            UIApplication.shared.open(facebookUrl, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func instagramTapped(_ sender: Any) {
        if let instagramUrl = aboutViewModel?.instagram {
            UIApplication.shared.open(instagramUrl, options: [:], completionHandler: nil)
        }
    }
}

 // MARK: Extension Presentable

extension AboutViewController: AboutPresenterViewable {
    
    func showOnSuccess(with aboutViewModel: AboutViewModel) {
        self.aboutViewModel = aboutViewModel
    }
    
    func hideOnFailure(with error: Error) {
        socialMediaStackView.removeFromSuperview()
    }
    
    func startLoadingAnimation() {
        loadingView.isHidden = false
    }
    
    func stopLoadingAnimation() {
        loadingView.isHidden = true
    }

}
