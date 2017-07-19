//
//  ViewController.swift
//  SwiftWebVCExample
//
//  Created by Myles Ringle on 20/12/2016.
//  Copyright © 2016 Myles Ringle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Push
    @IBAction func push() {
        let webVC = SwiftWebVC(urlString: textField.text!)
        webVC.delegate = self
        self.navigationController?.pushViewController(webVC, animated: true)
    }
    
    
}

extension ViewController: SwiftWebVCDelegate {
    
    func didStartLoading() {
        print("Started loading.")
    }
    
    func didFinishLoading(success: Bool) {
        print("Finished loading. Success: \(success).")
    }
}
