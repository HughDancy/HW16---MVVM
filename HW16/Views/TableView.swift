//
//  TableView.swift
//  HW16
//
//  Created by Борис Киселев on 21.09.2022.
//

import Foundation
import UIKit

class TableView: UIView {
    
    //MARK: - ViewModel
    
    let viewModel = TableViewModel()
    private var users = [User]()
    
    // MARK: - SubView's
    
    var table: UITableView = {
       let table = UITableView(frame: .zero, style: UITableView.Style.insetGrouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
        return table
    }()
    
    //MARK: - Init
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        addSubview(table)
        setupLayout()
        table.delegate = self
        table.dataSource = self
        
    }
    
    //MARK: ViewModel Settings
    
    func bindViewModel() {
        viewModel.users.bind { user in
            DispatchQueue.main.async {
                self.users = user ?? someUsers
            }
        }
    }
    
    // MARK: - Setup Layout
    
    func setupLayout() {
        table.translatesAutoresizingMaskIntoConstraints = false
        table.topAnchor.constraint(equalTo: topAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        table.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}

// MARK: - TableView Extension

extension TableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = "Bangladesh"
//        users[indexPath.row].name
        
        return cell
    }
    
    
}
