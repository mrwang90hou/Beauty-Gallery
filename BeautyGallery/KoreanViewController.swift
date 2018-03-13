//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by Jake Lin on 8/09/2014.
//  Copyright (c) 2014 rushjet. All rights reserved.
//


import UIKit
import Social

class KoreanViewController: UIViewController {
                            
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookTapped(_ sender: AnyObject) {
        var controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩女神画廊App，Github上的源码在 https://github.com/JakeLin/BeautyGallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)

    }

    @IBAction func twitterTapped(_ sender: AnyObject) {
        var controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊App，Github上的源码在 https://github.com/JakeLin/BeautyGallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func weiboTapped(_ sender: AnyObject) {
        var controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("一起来玩女神画廊App，Github上的源码在 https://github.com/JakeLin/BeautyGallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }
}
