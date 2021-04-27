//
//  CenterVCDelegate.swift
//  cardstock
//
//  Created by David Kumar on 4/26/21.
//

import UIKit

protocol CenterVCDelegate{
    
    func toggleLeftPanel()
    
    func addLeftPanelViewController()
    
    func animateLeftPanel(shouldExpand: Bool)
}
