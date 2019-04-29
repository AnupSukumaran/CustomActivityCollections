//
//  UIViewController+Ext.swift
//  CustomActivityCollections
//
//  Created by Qaptive Technologies on 11/04/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

var vSpinner : UIView?
var gActIndic: NVActivityIndicatorView?

extension UIViewController {
    
    func showSpinner(onView : UIView) {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .whiteLarge)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }
        
        vSpinner = spinnerView
    }
    
    func removeSpinner() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
        }
    }
    
    //MARK:
    func showCustomActivity(_ main : UIView,_ type:  NVActivityIndicatorType,_ color: UIColor) {
        //ballClipRotateMultiple
        let spinnerView = UIView.init(frame: main.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let actIndic = NVActivityIndicatorView(frame: spinnerView.frame, type: type, color: color, padding: self.view.frame.width/2.4)
        actIndic.startAnimating()
        gActIndic = actIndic
        DispatchQueue.main.async {
            spinnerView.addSubview(actIndic)
            main.addSubview(spinnerView)
        }
        
         vSpinner = spinnerView
        
    }
    
    //MARK:
    func stopActivityIndic() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
            guard let indic = gActIndic else {return}
            indic.stopAnimating()
        }
    }
    
}
