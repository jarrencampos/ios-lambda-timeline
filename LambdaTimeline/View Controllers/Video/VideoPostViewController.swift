//
//  VideoPostViewController.swift
//  LambdaTimeline
//
//  Created by Jarren Campos on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class VideoPostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func captureVideoPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToRecordVideo", sender: nil)
    }
    
}
