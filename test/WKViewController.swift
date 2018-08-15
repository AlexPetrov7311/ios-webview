//
//  ViewController.swift
//  test
//
//  Created by Alex Petrov on 4/7/17.
//  Copyright © 2017 Alex Petrov. All rights reserved.
//

import UIKit
import AVFoundation
import WebKit

class WKViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        print("q    wqw")
        super.viewDidLoad()
        
        let myURL = URL(string: "https://request-redirect-work.herokuapp.com/redirect")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



