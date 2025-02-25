//
//  SendQueryWebVC.swift
//  ToYou
//
//  Created by 이승준 on 2/23/25.
//

import UIKit
import WebKit

class SendQueryWebVC: UIViewController {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: view.bounds)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(webView)
        
        if let termsURL = URL(string: K.URLString.sendQueryLink) {
           let request = URLRequest(url: termsURL)
           webView.load(request)
       }
    }

}
