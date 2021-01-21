//
//  ViewController.swift
//  WebViewFireabaseTest
//
//  Created by USER on 1/21/21.
//  Copyright © 2021 USER. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView = WKWebView()

    let backBtn = UIButton()
    let nextBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        view.addSubview(webView)
        
        backBtn.frame = CGRect(x: 20, y: view.frame.size.height - 60, width: 60, height: 30)
        backBtn.backgroundColor = .red
        backBtn.setTitle("もどる", for: .normal)
        backBtn.addTarget(self, action: #selector(back(_:)), for: .touchUpInside)
        view.addSubview(backBtn)
        
        nextBtn.frame = CGRect(x: backBtn.frame.maxX + 20, y: view.frame.size.height - 60, width: 60, height: 30)
        nextBtn.backgroundColor = .blue
        nextBtn.setTitle("すすむ", for: .normal)
        nextBtn.addTarget(self, action: #selector(next(_:)), for: .touchUpInside)
        view.addSubview(nextBtn)
        
        
        let url = URL(string: "https://www.yahoo.co.jp/")
        let request = URLRequest(url: url!)
        webView.load(request)
        
        webView.navigationDelegate = self
        

print("ますたー")
        //aaa
        
        
        
    }
    //ロードが開始された時
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("読み込み開始")
    }
    
    //ロードが完了した時
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("ロード完了")
    }
    
    @objc func back(_ sender: UIButton) {
         //戻る
        webView.goBack()
     }

    @objc func next(_ sender: UIButton) {
         //進む
        webView.goForward()
     }

}

