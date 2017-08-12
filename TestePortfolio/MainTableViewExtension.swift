//
//  MainTableViewExtension.swift
//  TestePortfolio
//
//  Created by Alex on 11/08/17.
//  Copyright © 2017 br.gamas. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= 0 {
            return
        }
        
        for constraint in topo.constraints {
            if "altura" == constraint.identifier {
                
                let size = 180 - scrollView.contentOffset.y * 0.50
                
                if size >= 80 {
                    constraint.constant = size
                }
                
                print("SIZE \(size)")
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        return cell!
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
