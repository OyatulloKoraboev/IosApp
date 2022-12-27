//
//  ProgressViewController.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 22/12/22.
//

import UIKit

class ProgressViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Workout Progress"
        navigationController?.tabBarItem.title = "Progress"
        
        addNavBarButton(at: .left, title: "Export")
        addNavBarButton(at: .right, title: "Details")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
