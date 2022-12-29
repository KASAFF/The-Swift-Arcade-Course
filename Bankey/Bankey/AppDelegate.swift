//
//  AppDelegate.swift
//  Bankey
//
//  Created by Aleksey Kosov on 29.12.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        window?.rootViewController = OnboardingContainerViewController()
        //window?.rootViewController = OnboardingViewController(heroImageName: "delorean", titleText: "Bankey is fater, easier to use, and has a brand new look and feel that will make you feel like you back in 1989.")

        return true
    }

}

