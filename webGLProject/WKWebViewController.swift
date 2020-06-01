//
//  WKWebViewController.swift
//  webGLProject
//
//  Created by Admin on 01.06.2020.
//  Copyright © 2020 mshakh. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {
    
    var wkWebVeiw = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupIU()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadContent()
    }
   
    func setupIU() {
        
          title = "WKWEBVIEW"
         wkWebVeiw.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(wkWebVeiw)
            
            NSLayoutConstraint.activate([
                  self.wkWebVeiw.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
                   self.wkWebVeiw.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
                    self.wkWebVeiw.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                     self.wkWebVeiw.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
              ])
     }
    
    func loadContent(){

            if let filePath = Bundle.main.path(forResource:"index", ofType:"html", inDirectory: "export") {
           
                    // load file
                    let filePathURL = URL.init(fileURLWithPath: filePath)
                    let fileDirectoryURL = filePathURL.deletingLastPathComponent()
                    wkWebVeiw.loadFileURL(filePathURL, allowingReadAccessTo: fileDirectoryURL)
              
            }
       }


}
