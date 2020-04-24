//
//  TutorialVC.swift
//  RRCG
//
//  Created by eldin smakic on 19/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import UIKit
import WebKit

class TutorialVC: UIViewController {
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://www.youtube.com/watch?v=_YvCnzUpCB8")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
