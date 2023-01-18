//
//  Resources.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
    
        static var border = UIColor(hexString: "#E8ECEF")
        
        static var titlegray = UIColor(hexString: "#D8D8D8")
        
        static var background = UIColor(hexString: "#F8F9F9")
        
        static var seperator = UIColor(hexString: "#E8ECEF")
        
        
    }
    
    enum Images {
        enum Tabbar {
            static func image(for tab:Tab) -> UIImage {
                switch tab {
                    case .overview: return UIImage(named: "overview_tab") ?? UIImage()
                    case .session: return UIImage(named: "session_tab") ?? UIImage()
                    case .progress: return UIImage(named: "progress_tab") ?? UIImage()
                    case .settings: return UIImage(named: "setting_tab") ?? UIImage()
                }
            }
        }
        enum common {
            static var down_arrow = UIImage(named: "down_arrow")
        }
    }
    
    enum Strings {
        enum Tabbar{
            static func title(for tab: Tab) -> String {
                switch tab {
                    case .overview: return "Overview"
                    case .session: return "Sessions"
                    case .progress: return "Progress"
                    case .settings: return "Settings"
                }
            }
        }
    }
    
    enum Fonts {
        static func helveticaRegular(size:CGFloat) -> UIFont{
            UIFont(name:"Helvetica",size: size) ?? UIFont()
        }
    }
    
    enum OverViewController {
        enum Colors {
            static var buttonTextColor = UIColor(hexString: "#545C77")
            static var buttonColor = UIColor(hexString: "#F0F3FF")
        }
        
        enum Images {
            static var allWorkOutImage = UIImage(named: "down_arrow")
            static var addButtonImage = UIImage(named: "Add")
        }
        
        enum Strings {
            static var allWorkOuts = "All Workouts"
            static var navText = "Today"
        }
    }
}

