//
//  HandRejuvenationVC.swift
//  ACMobile
//
//  Created by Alex Liao on 4/4/18.
//  Copyright © 2018 Alex Liao. All rights reserved.
//

import UIKit
import WebKit

class HandRejuvenationVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var alertButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Call side menu method
        sideMenus()
        
        // Load webView
        // Define URL as webpage to load, define request as a URLRequest for url
        // Call webView to load request
        let url = URL(string: "https://appearancecenterapp.com/hand-rejuvenation")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Side Menu method using SWRevealViewController framework
    func sideMenus() {
        
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            alertButton.target = revealViewController()
            alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
    }
}
