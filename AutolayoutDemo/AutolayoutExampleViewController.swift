//
//  AutolayoutExampleViewController.swift
//  AutolayoutDemo
//
//  Created by Jeremy Conkin on 1/26/17.
//  Copyright © 2017 JeremyConkin. All rights reserved.
//

import UIKit

/// Base class for view controllers in this app
class AutolayoutExampleViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = view.backgroundColor
    }
}
