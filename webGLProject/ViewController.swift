//
//  ViewController.swift
//  webGLProject
//
//  Created by Admin on 01.06.2020.
//  Copyright © 2020 mshakh. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
 
    var showWkWebViewButton = UIButton()
    var showUIWebViewButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
   func setupUI(){
    
    self.showUIWebViewButton.setTitle("Show UIWebView", for: .normal)
    self.showUIWebViewButton.setTitleColor(.black, for: .normal)
    self.showUIWebViewButton.backgroundColor = .green
    self.showUIWebViewButton.addTarget(self, action: #selector(showUIWEBView), for: .touchUpInside)
    self.showUIWebViewButton.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(showUIWebViewButton)
    NSLayoutConstraint.activate([
        self.showUIWebViewButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
        self.showUIWebViewButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
        self.showUIWebViewButton.widthAnchor.constraint(equalToConstant: 200),
        self.showUIWebViewButton.heightAnchor.constraint(equalToConstant: 50)
    ])
    
    self.showWkWebViewButton.setTitle("Show WKWebView", for: .normal)
    self.showWkWebViewButton.setTitleColor(.black, for: .normal)
    self.showWkWebViewButton.backgroundColor = .green
    self.showWkWebViewButton.addTarget(self, action: #selector(showWKWEBView), for: .touchUpInside)
    self.showWkWebViewButton.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(showWkWebViewButton)
    NSLayoutConstraint.activate([
        self.showWkWebViewButton.topAnchor.constraint(equalTo: self.showUIWebViewButton.bottomAnchor, constant: 100),
        self.showWkWebViewButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
        self.showWkWebViewButton.widthAnchor.constraint(equalToConstant: 200),
        self.showWkWebViewButton.heightAnchor.constraint(equalToConstant: 50)
    ])
        
    }
    
    @objc func showWKWEBView() {
        
    let wkWebVC = WKWebViewController()
        self.navigationController?.pushViewController(wkWebVC, animated: true)
        
    }

    
    @objc func showUIWEBView() {
        let uiWebVC = UIWebViewController()
               self.navigationController?.pushViewController(uiWebVC, animated: true)
               
    }

}

