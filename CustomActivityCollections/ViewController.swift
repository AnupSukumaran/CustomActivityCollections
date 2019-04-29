//
//  ViewController.swift
//  CustomActivityCollections
//
//  Created by Qaptive Technologies on 11/04/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {
    
    var actIndic: NVActivityIndicatorView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
//      actIndic = NVActivityIndicatorView(frame: self.view.frame, type: .ballBeat, color: .red, padding: 10)
        
//        let frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
//        actIndic = NVActivityIndicatorView(frame: frame, type: .ballClipRotateMultiple, color: .red, padding: self.view.frame.width/2.4)
//        self.view.addSubview(actIndic)
    }
    
    
    @IBAction func navBtn(_ sender: UIBarButtonItem) {
        print("activity stopped")
        stopActivityIndic()
        //actIndic.stopAnimating()
       // removeSpinner()
    }
    
    @IBAction func activityStarterBtn(_ sender: UIButton) {
        print("activity started")
        showCustomActivity(self.view, .circleStrokeSpin, #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        //actIndic.startAnimating()
        //showSpinner(onView: self.view)
    }
    
    @IBAction func testBtn(_ sender: Any) {
        print("activity")
    }
}

extension ViewController: NVActivityIndicatorViewable {
    
}
