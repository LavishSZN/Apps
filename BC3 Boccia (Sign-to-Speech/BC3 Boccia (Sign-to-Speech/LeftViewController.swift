//
//  DownViewController.swift
//  BC3 Boccia (Sign-to-Speech
//
//  Created by Lavish Summan on 2021-03-19.
//

import UIKit
import AVKit
import AVFoundation

class LeftViewController: UIViewController {

    let synthesizer = AVSpeechSynthesizer()
   
    //All values in the PickerView
    let degree = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90"]
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       }
    //play button
    @IBAction func Play(_ sender: Any) {
        let utterance = AVSpeechUtterance(string:"Left" + Label.text! + "Degrees")
        utterance.rate = 0.4
        synthesizer.speak(utterance)
        
    }

}

extension LeftViewController: UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return degree.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return degree[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label.text = degree[row]
    
    }
    
    
    
}

