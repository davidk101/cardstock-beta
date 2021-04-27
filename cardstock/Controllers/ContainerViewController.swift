//
//  ContainerViewController.swift
//  cardstock
//
//  Created by David Kumar on 4/26/21.
//

import UIKit
import QuartzCore // for sliding menu bar

enum SlideOutState{
    
    case collapsed
    case leftPanelExpanded
}

enum ShowWhichVC{
    
    case homeVC
}

var showVC: ShowWhichVC = .homeVC

class ContainerViewController: UIViewController {
    
    var homeVC: HomeViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // function to init vc on the center of the screen
    func initCenter(screen: ShowWhichVC){
        
        var presentingController: UIViewController
        
        showVC = screen
        
        if homeVC == nil{
            
            // instantiates homeVC on main.storyboard
            homeVC = UIStoryboard.homeViewController()
            homeVC.delegate = self
        }
        
    }

}

private extension UIStoryboard{
    
    class func mainStoryboard() -> UIStoryboard{
        
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    // instantiates menuVC on main.storyboard
    class func leftViewController() -> LeftSidePanelViewController?{
        
        return mainStoryboard().instantiateViewController(identifier: "LeftSidePanelViewController") as? LeftSidePanelViewController
    }
    
    // instantiates homeVC on main.storyboard
    class func homeViewController() -> HomeViewController?{
        
        return mainStoryboard().instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        
    }
}
