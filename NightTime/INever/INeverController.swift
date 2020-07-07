//
//  INeverViewController.swift
//  NightTime
//
//  Created by Чурсина Юлия on 07.07.2020.
//  Copyright © 2020 Julia. All rights reserved.
//

import UIKit

class INeverController: UIViewController {
    
    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var taskText: UILabel!
    @IBOutlet weak var nextTask: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        nextTask.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toINeverRule" {
            
            let vc = segue.destination as! RuleViewController
            vc.ruleText = "iNewerRule"
        }
    }
    


}
