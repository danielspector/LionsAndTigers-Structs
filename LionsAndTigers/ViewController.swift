//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Eliot Arntz on 7/9/14.
//  Copyright (c) 2014 Bitfountain.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var myImageView: UIImageView
    
    @IBOutlet var nameLabel: UILabel
    
    @IBOutlet var ageLabel: UILabel
    
    @IBOutlet var breedLabel: UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        
        println("My Tiger's name is: \(myTiger.name) and its' breed is \(myTiger.breed) and the image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
    }

}

