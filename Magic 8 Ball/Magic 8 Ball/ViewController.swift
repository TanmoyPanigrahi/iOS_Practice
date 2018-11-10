//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tanmoy Panigrahi on 11/9/18.
//  Copyright © 2018 Tanmoy Panigrahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage()  {
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        randomBallNumber = Int.random(in: 0 ... 4)
    }


}

