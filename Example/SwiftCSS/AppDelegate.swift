//
//  AppDelegate.swift
//  SwiftCSS
//
//  Created by Soheil on 03/07/2016.
//  Copyright (c) 2016 Soheil. All rights reserved.
//

import UIKit
extension UIView {
    var marginTop:CGFloat {
        set {
            var y:CGFloat = newValue
            if let subviews = superview?.subviews {
                var prevView:UIView?
                for view:UIView in subviews {
                    if view == self {
                        break
                    }
                    prevView = view
                }
                if let prevView = prevView {
                    y += prevView.frame.origin.y + prevView.frame.height
                }
            }
            frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
        }
        get {
            return 0.0
        }
    }
    var marginTopAbsolute:CGFloat {
        set {
            let y:CGFloat = newValue
            frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
        }
        get {
            return 0.0
        }
    }
    var marginBottom:CGFloat {
        set {
            if let _superview = superview {
                var y:CGFloat = _superview.frame.height - newValue - frame.height
                if let subviews = superview?.subviews {
                    var nextView:UIView?
                    var shouldBreakOnNext = false
                    for view:UIView in subviews {
                        if shouldBreakOnNext {
                            nextView = view
                            break
                        }
                        if view == self {
                            shouldBreakOnNext = true
                        }
                    }
                    if let nextView = nextView {
                        y = nextView.frame.origin.y - newValue
                    }
                }
                frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
            }
        }
        get {
            return 0.0
        }
    }
    var marginBottomAbsolute:CGFloat {
        set {
            if let _superview = superview {
                let y:CGFloat = _superview.frame.height - newValue - frame.height
                frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
            }
        }
        get {
            return 0.0
        }
    }
    var marginLeft:CGFloat {
        set {
            var x:CGFloat = newValue
            if let subviews = superview?.subviews {
                var prevView:UIView?
                for view:UIView in subviews {
                    if view == self {
                        break
                    }
                    prevView = view
                }
                if let prevView = prevView {
                    x += prevView.frame.origin.x + prevView.frame.width
                }
            }
            frame = CGRectMake(x, frame.origin.y, frame.width, frame.height)
        }
        get {
            return 0.0
        }
    }
    var widthPercent:CGFloat {
        set {
            if let superview = superview {
                let width = superview.frame.width * newValue / 100
                let x = (superview.frame.width - width) / 2
                frame = CGRectMake(x, frame.origin.y, width, frame.height)
            }
        }
        get {
            return 0.0
        }
    }
    var heightPercent:CGFloat {
        set {
            if let superview = superview {
                let height = superview.frame.height * newValue / 100
                let y = (superview.frame.height - height) / 2
                frame = CGRectMake(frame.origin.x, y, frame.width, height)
            }
        }
        get {
            return 0.0
        }
    }
    var width:CGFloat {
        set {
            frame = CGRectMake(frame.origin.x, frame.origin.y, newValue, frame.height)
        }
        get {
            return 0.0
        }
    }
    var height:CGFloat {
        set {
            frame = CGRectMake(frame.origin.x, frame.origin.y, frame.width, newValue)
        }
        get {
            return 0.0
        }
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

