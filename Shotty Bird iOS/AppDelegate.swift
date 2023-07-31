//
//  AppDelegate.swift
//  Shotty Bird iOS
//
//  Copyright © 2023 Komodo Life. All rights reserved.
//

import GameKit
import SpriteKit
import UIKit

import GoogleMobileAds

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize store manager and restore purchases
        Task {
            await StoreManager.shared.unlockRemoveAds()
        }
        // Game Center initialization
        GameCenterHelper.shared.authenticateLocalPlayer(presentingViewController: window?.rootViewController) { success in
            if success {
                print("Game Center authentication completed as \(GKLocalPlayer.local.displayName)")
            } else {
                print("Game Center authentication failed...")
            }
        }
        // Initialize Google Mobile Ads
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        #if DEBUG
        GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = ["67bbb807cc18d05549bb0586e9950eef"]
        #endif
        return true
    }
}

