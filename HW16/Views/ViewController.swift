//
//  ViewController.swift
//  HW16
//
//  Created by Борис Киселев on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {

    private let viewModel = TableViewModel()
    var users = [User]()
    
    private var tableView: TableView? {
        guard isViewLoaded else { return nil }
        return view as? TableView
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
       view = tableView
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

    
}

