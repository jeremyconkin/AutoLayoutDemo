//
//  NotesViewController.swift
//  AutolayoutDemo
//
//  Created by Jeremy Conkin on 1/26/17.
//  Copyright © 2017 JeremyConkin. All rights reserved.
//

import UIKit

class NotesViewController: AutolayoutExampleViewController {

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 0.9411764706, green: 0.5098039216, blue: 0, alpha: 1)
    }
}
