//
//  ViewController.swift
//  MixSample
//
//  Created by Richard Morgan on 08/10/2016.
//  Copyright © 2016 Richard Morgan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var bannerView: DFPBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     print("Google Mobile Ads SDK version: \(DFPRequest.sdkVersion())")
        bannerView.adUnitID = "ca-app-pub-0838096323749987/8599662578"
        bannerView.rootViewController = self
        bannerView.loadRequest(DFPRequest())
        bannerView.loadRequest(GADRequest())
      
        
        let url = NSURL (string: "https://mixsample.herokuapp.com")
        let requestObj = NSURLRequest(URL: url!)
        webView.loadRequest(requestObj)
        
        //self.webView.frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.webView.frame = self.view.bounds
        self.webView.scalesPageToFit = true
        //self.webView.contentMode = UIViewContentMode.ScaleAspectFit
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

