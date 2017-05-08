//
//  ViewController.swift
//  ios-uikit-uiactivityviewcontroller-demo
//
//  Created by Eiji Kushida on 2017/02/22.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit
import Accounts

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapSNS(_ sender: UIButton) {
        let url = URL(string: "https://www.google.co.jp")!
        let activityVC = shareTextAndImageAndUrl(text: "sample", image: #imageLiteral(resourceName: "sample"), url: url)
        self.present(activityVC, animated: true, completion: nil)
    }
    
    /// テキストをシェアする
    private func shareText(text: String) -> UIActivityViewController {

        let items = [text]
        
        let activityViewController = UIActivityViewController(activityItems: items,
                                              applicationActivities: nil)
        
        // 使用しないアクティビティタイプを指定する
        let excludedActivityTypes = [
            UIActivityType.postToFacebook,
            UIActivityType.postToTwitter,
            UIActivityType.message,
            UIActivityType.saveToCameraRoll,
            UIActivityType.print
        ]
        
        activityViewController.excludedActivityTypes = excludedActivityTypes
        return activityViewController
    }
    
    /// テキストと画像をシェアする
    private func shareTextAndImage(text: String, image: UIImage) -> UIActivityViewController {
        
        let items = [text, image] as [Any]
        
        let activityViewController = UIActivityViewController(activityItems: items,
                                                  applicationActivities: nil)
        
        // 使用しないアクティビティタイプを指定する
        let excludedActivityTypes = [
            UIActivityType.postToFacebook,
            UIActivityType.postToTwitter,
            UIActivityType.message,
            UIActivityType.saveToCameraRoll,
            UIActivityType.print
        ]
        
        activityViewController.excludedActivityTypes = excludedActivityTypes
        return activityViewController
    }
    
    /// テキスト、画像、URLをシェアする
    private func shareTextAndImageAndUrl(text: String, image: UIImage, url: URL) -> UIActivityViewController {
        
        let items = [text, image, url] as [Any]
        
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        // 使用しないアクティビティタイプを指定する
        let excludedActivityTypes = [
            UIActivityType.postToFacebook,
            UIActivityType.postToTwitter,
            UIActivityType.message,
            UIActivityType.saveToCameraRoll,
            UIActivityType.print
        ]
        
        activityViewController.excludedActivityTypes = excludedActivityTypes
        return activityViewController
    }
}

