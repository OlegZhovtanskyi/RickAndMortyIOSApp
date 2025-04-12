//
//  RMTabBarViewController.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 05/03/2025.
//

import UIKit

// MARK: - Main Tab Bar Controller for Rick and Morty App
// This view controller manages the primary navigation structure of the application
// It sets up a tab bar with four main sections: Characters, Episodes, Locations, and Settings
// Uses UITabBarController as a base for creating a multi-tab interface
final class RMTabBarViewController: UITabBarController {

    // MARK: - Lifecycle Methods
    // Configure the initial appearance and setup of the tab bar controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    // MARK: - Tab Configuration Method
    // Responsible for creating and configuring individual view controllers for each tab
    // Steps:
    // 1. Create view controllers for each section
    // 2. Set titles for each view controller
    // 3. Wrap each view controller in a navigation controller
    // 4. Set the view controllers for the tab bar
    private func setUpTabs() {
        // Create individual view controllers
        let characterVC = RMCharacterViewController()
        let episodeVC = RMEpisodeViewController()
        let locationVC = RMLocationViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        // Wrap each view controller in a navigation controller
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: episodeVC)
        let nav3 = UINavigationController(rootViewController: locationVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Charactes",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Episodes",
                                       image: UIImage(systemName: "tv"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Locations",
                                       image: UIImage(systemName: "globe"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        // Set tab bar view controllers
        setViewControllers([nav1,
                            nav2,
                            nav3,
                            nav4], animated: true)
    }
}

