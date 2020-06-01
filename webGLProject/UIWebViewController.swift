//
//  UIWebViewController.swift
//  webGLProject
//
//  Created by Admin on 01.06.2020.
//  Copyright © 2020 mshakh. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController {
 var uiWebView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupIU()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadContent()
    }
    
    func loadContent(){

        title = "UIWEBVIEW"
        let fileUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "index", ofType: "html", inDirectory: "export") ?? "")
                                 let fileUrl2 = NSURL(string: "?lang=ja", relativeTo: fileUrl)!
                   
                               uiWebView.loadRequest(NSURLRequest(url: fileUrl2 as URL) as URLRequest)
  
    }
    
   func setupIU() {
        
    uiWebView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(uiWebView)
    
    NSLayoutConstraint.activate([
          self.uiWebView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
           self.uiWebView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            self.uiWebView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
             self.uiWebView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
      ])
    }


}
