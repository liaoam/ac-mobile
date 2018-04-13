//
//  PhotoGalleryVC.swift
//  ACMobile
//
//  Created by Alex Liao on 4/12/18.
//  Copyright © 2018 Alex Liao. All rights reserved.
//

import UIKit
import WebKit

class PhotoGalleryVC: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var alertButton: UIBarButtonItem!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call side menu method
        sideMenus()
        
        // Load webView
        // Define URL as webpage to load, define request as a URLRequest for url
        // Call webView to load request
        let url = URL(string: "https://appearancecenterapp.com/photo-gallery")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
