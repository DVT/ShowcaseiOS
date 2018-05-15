//
//  HeaderCollectionViewCell.swift
//  Showcase-iOS
//
//  Created by Edward Mtshweni on 2018/05/15.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var searchBar: UISearchBar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension HeaderCollectionViewCell: UISearchControllerDelegate, UISearchResultsUpdating, UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}


