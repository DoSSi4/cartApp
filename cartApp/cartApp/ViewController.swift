//
//  ViewController.swift
//  cartApp
//
//  Created by DoSSi4 on 07.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listView: UIView!
    @IBOutlet weak var greedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            
                self.listView.alpha = 0
                self.greedView.alpha = 1
                
        }else{
            UIView.animate(withDuration: 0.5, animations: {
                self.listView.alpha = 1
                self.greedView.alpha = 0
            })
            }
        }
    
}



