//
//  EntryViewController.swift
//  AutolayoutDemo
//
//  Created by Jeremy Conkin on 1/26/17.
//  Copyright © 2017 JeremyConkin. All rights reserved.
//

import UIKit

/// View controller that serves as an entry point to the app
class EntryViewController: AutolayoutExampleViewController {

    override func viewWillAppear(_ animated: Bool) {

        navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {

        navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
}

