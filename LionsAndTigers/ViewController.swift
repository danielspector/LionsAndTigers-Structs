//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Eliot Arntz on 7/9/14.
//  Copyright (c) 2014 Bitfountain.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var breedLabel: UILabel!

    var myTigers: [Tiger] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        
        self.myTigers.append(myTiger)
        
        println("ViewController: My Tiger's name is: \(myTiger.name) and its' breed is \(myTiger.breed) and the image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        self.myTigers += [secondTiger, thirdTiger, fourthTiger]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        var randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        while randomIndex == currentIndex {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        }
        
        currentIndex = randomIndex
        
        let tiger = myTigers[randomIndex]
        
        myImageView.image = tiger.image
        nameLabel.text = tiger.name
        breedLabel.text = tiger.breed
        ageLabel.text = "\(tiger.age)"
        
        UIView.transitionWithView(self.view, duration: 0.5, options: UIViewAnimationOptions.TransitionCurlUp,
            animations: {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"

            }, completion: {
                (finished: Bool) -> () in
        })
        
    }
}





