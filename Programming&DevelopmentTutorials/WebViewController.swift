//
//  WebViewController.swift
//  Programming&DevelopmentTutorials
//
//  Created by Khawar Islam on 27/06/2016.
//  Copyright © 2016 Khawar Islam. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var WebView: UIWebView!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let url = URL (string: "http://www.c-sharpcorner.com/members/khawar-islam2");
        let requestObj = URLRequest(url: url!);
        WebView.loadRequest(requestObj);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
