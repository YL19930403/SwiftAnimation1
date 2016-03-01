//
//  ViewController.swift
//  Animation1
//
//  Created by 余亮 on 16/3/1.
//  Copyright © 2016年 余亮. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var V1: UIView!
    
    @IBOutlet weak var V2: UIView!

    @IBOutlet weak var V3: UIView!
    
    @IBOutlet weak var V4: UIView!
    
    @IBOutlet weak var V5: UIView!
    
    @IBOutlet weak var V6: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func viewWillAppear(animated: Bool) {
        V2.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        //普通动画
        UIView.animateWithDuration(1.0, delay: 0.1, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.Repeat.rawValue | UIViewAnimationOptions.Autoreverse.rawValue | UIViewAnimationOptions.CurveEaseIn.rawValue), animations: { () -> Void in
            self.V1.center.x += self.view.bounds.width
            }, completion: nil )
        
        UIView.animateWithDuration(1.2, delay: 0.3, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.CurveEaseInOut.rawValue | UIViewAnimationOptions.CurveLinear.rawValue | UIViewAnimationOptions.Autoreverse.rawValue), animations: { () -> Void in
               self.V2.center.x -= 100
              self.V2.alpha = 1
            }, completion: nil)
        
        
        
        UIView.animateWithDuration(1.3, delay: 8, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.AllowAnimatedContent.rawValue), animations: { () -> Void in
            self.V3.transform = CGAffineTransformMakeTranslation(0, 100)
            self.V3.backgroundColor = UIColor.yellowColor()
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.8, animations: { () -> Void in
                    self.V3.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                })
            
        }
        
        let newView = UIView(frame: V4.bounds)
        newView.backgroundColor = UIColor.redColor()
        
        //过渡
        UIView.transitionWithView(self.V4, duration: 2, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.Repeat.rawValue | UIViewAnimationOptions.TransitionFlipFromBottom.rawValue | UIViewAnimationOptions.CurveEaseIn.rawValue), animations: { () -> Void in
              self.V4.addSubview(newView)
            }, completion: nil)
        
        let newView1 = UIView(frame: V5.bounds)
        newView1.backgroundColor = UIColor.redColor()
        UIView.transitionWithView(self.V5, duration: 2.0, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.Repeat.rawValue | UIViewAnimationOptions.CurveEaseIn.rawValue | UIViewAnimationOptions.TransitionCurlDown.rawValue), animations: { () -> Void in
            self.V5.addSubview(newView1)
            }, completion: nil)
        
        let newView2 = UIView(frame: V6.bounds)
        newView2.backgroundColor = UIColor.orangeColor()
        newView2.center = self.V6.center
    }

}


























