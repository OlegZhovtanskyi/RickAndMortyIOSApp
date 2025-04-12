//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 05/03/2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // MARK: - Scene Initialisation
    // This method sets up the main window of the iOS application
    //
    // Purpose:
    // - Configures the initial window when the app launches
    // - Creates and sets the root view controller
    //
    // How to use:
    // - Automatically called by the system when the app starts
    // - Part of the UIWindowSceneDelegate protocol
    //
    // Parameters:
    // - scene: The scene being connected to the session
    // - session: The scene session for the app
    // - connectionOptions: Additional options for scene connection
    //
    // Key steps:
    // 1. Verify the scene is a UIWindowScene
    // 2. Create the main view controller
    // 3. Initialise the app window
    // 4. Set the root view controller
    // 5. Make the window visible
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let vc = RMTabBarViewController()
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

