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

class WKViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        webView = WKWebView()
        webView.navigationDelegate = self
        
        let myURL = URL(string: "http://localhost:3000/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func didFinishNavigation(_ webView: UIWebView)
    {
        print("asdasd")
        if let cookies = HTTPCookieStorage.shared.cookies {
            for cookie in cookies {
                print(cookie)
            }
        }
        
        let storage = HTTPCookieStorage.shared
        for cookie in storage.cookies! {
            storage.deleteCookie(cookie)
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



