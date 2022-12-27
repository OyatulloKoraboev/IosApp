//
//  TabbarViewController.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit



enum Tab:Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}


final class TabBarViewController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super .init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.border.cgColor
        tabBar.layer.borderWidth = 1
        
        
        let controllers:[NavBarViewController] = Tab.allCases.map { tab in
            let contrloller = NavBarViewController(rootViewController: getContrloller(for: tab))
            contrloller.tabBarItem = UITabBarItem(title: Resources.Strings.Tabbar.title(for: tab), image: Resources.Images.Tabbar.image(for: tab), tag: tab.rawValue)
            
            return contrloller
        }
        
        setViewControllers(controllers, animated: true)
    }
    
    private func getContrloller(for tab:Tab) -> BaseViewController{
        switch tab {
            case .overview: return OverviewController()
            case .session: return SessionViewController()
            case .progress: return ProgressViewController()
            case .settings: return SettingsViewController()
        }
    }
}
