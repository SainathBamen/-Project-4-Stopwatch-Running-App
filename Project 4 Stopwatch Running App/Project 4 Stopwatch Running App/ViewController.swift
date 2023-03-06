//
//  ViewController.swift
//  Project 4 Stopwatch Running App
//
//  Created by sainath bamen on 20/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var lable3: UILabel!
    @IBOutlet weak var lable2: UILabel!
    
    @IBOutlet weak var puaseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    var hours = 0
    var minutes = 0
    var seconds = 0
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 40
        resetButton.layer.cornerRadius = 40
        puaseButton.layer.cornerRadius = 40

    }
    
    
    @IBAction func puaseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        reseetButton()
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action), userInfo: nil, repeats: true)
    }
   @objc func action(){
       seconds += 1
       print("1")
       lable3.text = "\(seconds)"
       if seconds == 60{
           minutes += 1
           seconds = 0
           
       }
       if minutes == 60{
           minutes = 0
           seconds = 0
           hours += 0
       }
       if hours ==
            24{
           timer.invalidate()
       }
       
       lable3.text = "\(seconds)"
       lable2.text = minutes ==  0 ? "0\(minutes)" : "\(minutes)"
       lable.text = hours == 0 ? "0\(hours)" : "\(hours)"
    }
    func reseetButton(){
        hours = 0
        minutes = 0
        seconds = 0
        timer.invalidate()
        lable.text = "00"
        lable2.text = "00"
        lable3.text = "00"
        
        
    }
    
    
   
}
