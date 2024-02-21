//
//  UIHelper.swift
//  GitHubFollowers
//
//  Created by Mutlu Çalkan on 21.02.2024.
//

import UIKit

struct UIHelper {
    
    //EXPLANATION OF FLOW LAYOUT ALGORITHM
    ///We want to create three column flow layout.
    ///There will be paddings on the left and right in a row.
    ///Also, there will be item spaces between three items.
    ///When we subtract those spaces and paddings from the view width, we will get the items.
    ///Then we will divide them three.
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
    
}
