//
//  AboutPresenter.swift
//  Showcase-iOS
//sto
//  Created by Sashen Pillay on 2019/03/14.
//  Copyright © 2019 DVT. All rights reserved.
//

import Foundation

class AboutPresenter: AboutPresentable {
    
    //MARK: Injectable Properties
    
    var aboutView: AboutPresenterViewable?
    var aboutInteractor: AboutInteractable?
    
     //MARK: Operations
    
    func onRetrieveSocialMediaLinksComplete(with links: SocialMediaLinks) {
        let aboutViewModel = AboutViewModel(socialMediaLinks: links)
        aboutView?.stopLoadingAnimation()
        aboutView?.showOnSuccess(with: aboutViewModel)
        
    }
    
    func onRetrieveSocialMediaLinksFailed(with error: Error) {
        aboutView?.stopLoadingAnimation()
        aboutView?.hideOnFailure(with: error)
    }
    
    func retrieveSocialMediaLinks() {
        aboutView?.startLoadingAnimation()
        //Mark TODO: remove mock and replace with aboutInteractor?.retrieveSocialMediaLinks()
        aboutInteractor?.retrieveMockedSocialMediaLinks()
    }

}
