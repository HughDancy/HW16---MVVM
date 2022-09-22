//
//  UserViewController.swift
//  HW16
//
//  Created by Борис Киселев on 22.09.2022.
//

import UIKit

class UserViewController: UIViewController {

    private var userView: UserView? {
        guard isViewLoaded else { return nil }
        return view as? UserView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = UserView()
    }

}
