//
//  ViewController.swift
//  DragAndDrop
//
//  Created by Jason Sturges on 7/8/16.
//  Copyright © 2016 Jason Sturges. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var imageView: DropImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

