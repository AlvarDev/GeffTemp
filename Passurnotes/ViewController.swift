//
//  ViewController.swift
//  Passurnotes
//
//  Created by Alvaro David on 01/06/17.
//  Copyright © 2017 AlvarDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var loading: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self;
        webView.loadRequest(NSURLRequest(url: NSURL(string: "https://www.passurnotes.org")! as URL) as URLRequest)
    }
    
    
    func webViewDidFinishLoad(_ webView : UIWebView){
        loading.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

