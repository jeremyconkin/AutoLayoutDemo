//
//  AnimationViewController.swift
//  AutolayoutDemo
//
//  Created by Jeremy Conkin on 1/26/17.
//  Copyright © 2017 JeremyConkin. All rights reserved.
//

import UIKit

class AnimationViewController: AutolayoutExampleViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        topConstraint.constant = 0
        view.layoutIfNeeded()
    }

    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)

        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       options: UIViewAnimationOptions(),
                       animations: {
                        self.topConstraint.constant = 300
                        self.view.layoutIfNeeded()
        },
                       completion: nil)
    }

}
