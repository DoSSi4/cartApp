//
//  ViewController.swift
//  cartApp
//
//  Created by DoSSi4 on 07.02.2021.
//

import UIKit

class ViewController: UIViewController {
    let listVC = ListViewController()
    let greedVC = GreedViewController()

    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

    }
    private func setupViews(){
        addChild(listVC)
        addChild(greedVC)
        self.view.addSubview(listVC.view)
        self.view.addSubview(greedVC.view)
        
        listVC.didMove(toParent: self)
        greedVC.didMove(toParent: self)
        listVC.view.frame = self.view.bounds
        greedVC.view.frame = self.view.bounds
        greedVC.view.isHidden = true
        
    }
    
    @IBAction func didSegment(_ sender: UISegmentedControl) {
        if  sender.selectedSegmentIndex == 0 {
            listVC.view.isHidden = false
        }
        else{
            greedVC.view.isHidden = false
            listVC.view.isHidden = true
        }
    }
    
}


