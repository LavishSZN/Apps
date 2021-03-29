//
//  ViewController.swift
//  BC3 Boccia (Sign-to-Speech
//
//  Created by Lavish Summan on 2021-03-18.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func UpButton(_ sender: AnyObject) {
        print("Pressed Up!")
        self.performSegue(withIdentifier: "UpSegue", sender: self)
    }
    
    @IBAction func RightButton(_ sender: Any) {
        print("Pressed Right!")
        self.performSegue(withIdentifier: "RightSegue", sender: self)
    }
    
    @IBAction func DownButton(_ sender: Any) {
        print("Pressed Down!")
        self.performSegue(withIdentifier: "DownSegue", sender: self)
    }
    
    @IBAction func LeftButton(_ sender: Any) {
        print("Pressed Left!")
        self.performSegue(withIdentifier: "LeftSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        print ("Hello World")
    }
    


}

