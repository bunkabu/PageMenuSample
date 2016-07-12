//
//  TestViewController.swift
//  PageMenuDemoNoStoryboard
//
//  Created by Niklas Fahl on 12/19/14.
//  Copyright (c) 2014 CAPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?
    var pageMenu1 : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        
        var controller1 : UIViewController = UIViewController()
        controller1.view.backgroundColor = UIColor.purpleColor()
        controller1.title = "PURPLE"
        controllerArray.append(controller1)
        
        var controller2 : UIViewController = UIViewController()
        controller2.view.backgroundColor = UIColor.orangeColor()
        controller2.title = "ORANGE"
        controllerArray.append(controller2)
        
        var controller3 : UIViewController = UIViewController()
        controller3.view.backgroundColor = UIColor.grayColor()
        controller3.title = "GRAY"
        controllerArray.append(controller3)
        
        var controller4 : UIViewController = UIViewController()
        controller4.view.backgroundColor = UIColor.brownColor()
        controller4.title = "BROWN"
        var btn4: UIButton = UIButton()
        btn4.frame = CGRectMake(0, 0, 300, 50)
        btn4.setTitle("aaaaa", forState: .Normal)
        btn4.backgroundColor = UIColor.greenColor()
        controller4.view.addSubview(btn4)
        controllerArray.append(controller4)
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 50.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: nil)
        
        print(self.view.frame.height)
        
        self.view.addSubview(pageMenu!.view)
        
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
