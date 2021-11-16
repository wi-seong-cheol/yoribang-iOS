//
//  AllRecipeViewController.swift
//  YoriBang
//
//  Created by wi_seong on 2021/11/17.
//

import Foundation
import UIKit

class AllRecipeViewController: UIViewController {
    @IBOutlet weak var AllRecipeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AllRecipeTableView.delegate = self
        AllRecipeTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}

extension AllRecipeViewController: UITableViewDelegate {
    
}

extension AllRecipeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = AllRecipeTableView.dequeueReusableCell(withIdentifier: AllRecipeTableViewCell.identifier, for: indexPath) as? AllRecipeTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure()
        return cell
        
    }
}