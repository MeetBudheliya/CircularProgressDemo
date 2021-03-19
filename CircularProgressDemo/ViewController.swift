//
//  ViewController.swift
//  CircularProgressDemo
//
//  Created by MAC on 19/03/21.
//

import UIKit
import KDCircularProgress
class ViewController: UIViewController {

   
    @IBOutlet weak var progresssView: KDCircularProgress!
    @IBOutlet weak var progressLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(progressRound), userInfo: nil, repeats: true)
        
    }
    @objc func progressRound(){
        if progresssView.angle < 360{
            progresssView.angle = progresssView.angle + 1
            progressLabel.text = "\(Int((progresssView.angle*100)/360)) %"
        }else{
            progresssView.angle = 0
            progressLabel.text = "\(Int((progresssView.angle*100)/360))) %"
        }
        
    }

}

