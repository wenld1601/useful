//
//  ViewController.swift
//  2048
//
//  Created by weng Higgins on 2019-08-19.
//  Copyright © 2019 weng Higgins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func startGameButtonTapped(sender: UIButton){
        let game = GameViewController(dimension: 8, threshold: 2048)
        self.presentedViewController(game, animated:true, completion: nil)
    }
}

