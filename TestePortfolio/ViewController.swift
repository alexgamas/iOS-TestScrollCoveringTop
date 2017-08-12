//
//  ViewController.swift
//  TestePortfolio
//
//  Created by Alex on 11/08/17.
//  Copyright © 2017 br.gamas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabela: UITableView!
    
    @IBOutlet weak var topo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabela.delegate = self
        tabela.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

