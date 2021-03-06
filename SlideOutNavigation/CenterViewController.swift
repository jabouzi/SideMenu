//
//  CenterViewController.swift
//  SlideOutNavigation
//
//  Created by James Frost on 03/08/2014.
//  Copyright (c) 2014 James Frost. All rights reserved.
//

import UIKit

protocol CenterViewControllerDelegate {
  func toggleLeftPanel()
  func collapseSidePanels()
}

class CenterViewController: UIViewController, SidePanelViewControllerDelegate {
  
  @IBOutlet weak fileprivate var imageView: UIImageView!
  @IBOutlet weak fileprivate var titleLabel: UILabel!
  @IBOutlet weak fileprivate var creatorLabel: UILabel!
  
  var delegate: CenterViewControllerDelegate?
  
  // MARK: Button actions
  
  @IBAction func kittiesTapped(_ sender: AnyObject) {
    delegate?.toggleLeftPanel()
  }
  
  func animalSelected(_ animal: Animal) {
    imageView.image = animal.image
    titleLabel.text = animal.title
    creatorLabel.text = animal.creator
    
    delegate?.collapseSidePanels()
  }
  
}
