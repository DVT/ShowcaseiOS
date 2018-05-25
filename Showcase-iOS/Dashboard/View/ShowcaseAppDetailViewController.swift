//
//  ShowcaseAppDetailViewController.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/24.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class ShowcaseAppDetailViewController: UIViewController {
    @IBOutlet private weak var scrollView:UIScrollView!
    @IBOutlet private weak var mainDetailSubView:UIView!
    @IBOutlet private weak var functionalityView:UIView!
    @IBOutlet private weak var technologyView:UIView!
    @IBOutlet private weak var screenshotsView:UIView!
    @IBOutlet weak var screenShotsScrollView: UICollectionView!
    
    var showcaseAppViewModel: ShowcaseAppViewModel?
    var screenshots = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screenShotsScrollView.delegate = self
        self.screenShotsScrollView.dataSource = self
        self.registerScreenshotsCell()
        self.initViews()
        self.title = showcaseAppViewModel?.name        
    }
    
    func initViews() {
        let main = MainDetailView(frame: mainDetailSubView.bounds)
        main.populateView(with: showcaseAppViewModel)
        mainDetailSubView.addSubviewPinnedToEdges(main)
        let functionality = FunctionalityView(frame: functionalityView.bounds)
        functionality.populateView(with: showcaseAppViewModel)
        functionalityView.addSubviewPinnedToEdges(functionality)
        let technology = TechnologyView(frame: technologyView.bounds)
        technology.populateView(with: showcaseAppViewModel)
        technologyView.addSubviewPinnedToEdges(technology)
        guard let screenshots = showcaseAppViewModel?.screenshots else {
            return
        }
        self.screenshots = screenshots
        self.screenShotsScrollView.reloadData()
    }
    
    func registerScreenshotsCell() {
        let nib = UINib(nibName: "ScreenshotCollectionViewCell", bundle: nil)
        self.screenShotsScrollView?.register(nib, forCellWithReuseIdentifier: "ScreenshotCollectionViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ShowcaseAppDetailViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return screenshots.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScreenshotCollectionViewCell", for: indexPath) as! ScreenshotCollectionViewCell
        cell.populateImageView(with: screenshots[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section:Int) -> CGFloat {
        return 3.0
    }
}

