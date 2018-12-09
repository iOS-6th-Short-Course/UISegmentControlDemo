//
//  ViewController.swift
//  UISegmentControlDemo
//
//  Created by Chhaileng Peng on 12/9/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0 {
            view.backgroundColor = .white
        } else if segment.selectedSegmentIndex == 1 {
            view.backgroundColor = .blue
        } else if segment.selectedSegmentIndex == 2 {
            view.backgroundColor = .yellow
        } else if segment.selectedSegmentIndex == 3 {
            view.backgroundColor = .green
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segment.insertSegment(withTitle: "Hello", at: 2, animated: true)
        segment.removeSegment(at: 4, animated: true)
        segment.selectedSegmentIndex = 2
        
        segment.setImage(#imageLiteral(resourceName: "home"), forSegmentAt: 0)
        segment.setTitle("Blue", forSegmentAt: 1)
        segment.setTitle("Yellow", forSegmentAt: 2)
        segment.setTitle("Green", forSegmentAt: 3)
    }


}

