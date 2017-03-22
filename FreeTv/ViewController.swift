//
//  ViewController.swift
//  FreeTv
//
//  Created by Jacob Williamson on 3/22/17.
//  Copyright © 2017 Jacob Williamson. All rights reserved.
//

import Alamofire
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("http://api.tvmaze.com/shows/1/episodes").responseJSON { response in            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

