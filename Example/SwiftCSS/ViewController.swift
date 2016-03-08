//
//  ViewController.swift
//  SwiftCSS
//
//  Created by Soheil on 03/07/2016.
//  Copyright (c) 2016 Soheil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var item = [String: AnyObject]()
    var pic = UIImageView()
    var name = UILabel()
    var addBtn = UIButton()
    var plusBtn = UIButton()
    var minusBtn = UIButton()
    var count = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        pic = UIImageView(image: UIImage(contentsOfFile: "flower"))
        view.addSubview(pic)
        
        name.text = item["name"] as? String
        name.textAlignment = NSTextAlignment.Center
        view.addSubview(name)
        
        addBtn.setTitle("               Add to Cart", forState: UIControlState.Normal)
        addBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        addBtn.addTarget(self, action: nil, forControlEvents: UIControlEvents.TouchUpInside)
        addBtn.backgroundColor = UIColor.grayColor()
        addBtn.titleLabel?.font = UIFont.boldSystemFontOfSize(20)
        view.addSubview(addBtn)
        
        
        minusBtn = UIButton(frame: CGRectMake(10, 0, 30, 30))
        minusBtn.setTitle("–", forState: UIControlState.Normal)
        minusBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        minusBtn.addTarget(self, action: nil, forControlEvents: UIControlEvents.TouchUpInside)
        minusBtn.titleLabel?.font = UIFont.boldSystemFontOfSize(22)
        view.addSubview(minusBtn)
        
        count = UILabel(frame: CGRectMake(0, 0, 30, 30))
        count.text = "1"
        count.textColor = UIColor.whiteColor()
        count.backgroundColor = UIColor.grayColor()
        count.font = UIFont.boldSystemFontOfSize(20)
        count.textAlignment = NSTextAlignment.Center
        view.addSubview(count)
        
        plusBtn = UIButton(frame: CGRectMake(0, 0, 30, 30))
        plusBtn.setTitle("+", forState: UIControlState.Normal)
        plusBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        plusBtn.addTarget(self, action: nil, forControlEvents: UIControlEvents.TouchUpInside)
        plusBtn.titleLabel?.font = UIFont.boldSystemFontOfSize(22)
        view.addSubview(plusBtn)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pic.marginTop = 100
        pic.height = 150
        pic.widthPercent = 50
        name.marginTop = 20
        name.widthPercent = 80
        addBtn.widthPercent = 100
        addBtn.height = 50
        addBtn.marginBottomAbsolute = 0
        minusBtn.marginBottomAbsolute = 10
        plusBtn.marginBottomAbsolute = 10
        plusBtn.marginLeft = 10
        count.marginBottomAbsolute = 10
        count.marginLeft = 10
    }

}

