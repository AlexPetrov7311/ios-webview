//
//  ViewController.swift
//  test
//
//  Created by Alex Petrov on 4/7/17.
//  Copyright © 2017 Alex Petrov. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        UserDefaults.standard.register(defaults: ["UserAgent": "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 4_3_2 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8H7 Safari"]);
        
        webView.delegate = self
        webView.loadRequest(URLRequest(url: URL(string: "http://localhost:3000/")!))
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
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


