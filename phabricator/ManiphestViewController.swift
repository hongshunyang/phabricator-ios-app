//
//  ViewController.swift
//  phabricator
//
//  Created by Raphael K. on 22.11.16.
//  Copyright © 2016 Raphael K. All rights reserved.
//

import UIKit

class ManiphestViewController: CustomWebViewController {

    let url = URL(string: "\(Config.general.baseurl)maniphest/query/assigned/?__print__=1")!
    let addUrl = URL(string: "\(Config.general.baseurl)maniphest/task/edit/form/2/?__print__=1")!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Maniphest"
        
        webView.loadRequest(URLRequest(url: url))
    }
    
    override func resetWebView () {
        webView.loadRequest(URLRequest(url: url))
    }
    
    override func addAction() {
        webView.loadRequest(URLRequest(url: addUrl))
    }

}

