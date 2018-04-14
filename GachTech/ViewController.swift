//
//  ViewController.swift
//  GachTech
//
//  Created by Marina Goto on 2018/04/09.
//  Copyright © 2018年 Marina Goto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func gacha() {
        self.performSegue(withIdentifier: "result", sender: nil)
    }


}

