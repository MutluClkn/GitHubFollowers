//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Mutlu Çalkan on 16.01.2024.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { follower, errorMessage in
            guard let follower = follower else {
                self.presentGFAlertOnMainThread(title: "Error", message: errorMessage!, buttonTitle: "Ok")
                return
            }
            
            print("Followers count = \(follower.count)")
            print(follower)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
