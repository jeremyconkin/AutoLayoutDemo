//
//  CodingViewController.swift
//  AutolayoutDemo
//
//  Created by Jeremy Conkin on 1/26/17.
//  Copyright © 2017 JeremyConkin. All rights reserved.
//

import UIKit

/// View controller that shows how to programmatically add constraints
class CodingViewController: AutolayoutExampleViewController {

    override func viewDidLoad() {

        super.viewDidLoad()

        anchorsExample()
        oldSchoolExample()
        asciiArtExample()
    }

    /// Creates a subview with constraints generated via anchors
    private func anchorsExample() {

        let constrainedView = createDemoSubview(viewTitle: "Anchors Example")

        let viewMargin = CGFloat(10)
        constrainedView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: viewMargin).isActive = true
        constrainedView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -viewMargin).isActive = true
        constrainedView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        constrainedView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }

    /// Creates a subview with constraints added manually
    private func oldSchoolExample() {

        let constrainedView = createDemoSubview(viewTitle: "Old School Example")

        let viewMargin = CGFloat(10)
        view.addConstraint(NSLayoutConstraint(item: constrainedView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: viewMargin))
        view.addConstraint(NSLayoutConstraint(item: constrainedView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -viewMargin))
        view.addConstraint(NSLayoutConstraint(item: constrainedView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 250))
        constrainedView.addConstraint(NSLayoutConstraint(item: constrainedView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
    }

    /// Creates a subview with constraints generated via the visual constraint formatting language
    private func asciiArtExample() {

        let constrainedView = createDemoSubview(viewTitle: "Ascii Art Example")

        let viewsDictionary = ["constrainedView":constrainedView]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[constrainedView]-10-|", options: .alignAllFirstBaseline, metrics: nil, views: viewsDictionary))

        // "V: means vertical constraints top to bottom
        // The options dictionary is used to create local variables referenced by the string
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-leftMargin-[constrainedView(viewHeight)]", options: .alignAllFirstBaseline, metrics: ["viewHeight":CGFloat(100), "leftMargin":CGFloat(400)], views: viewsDictionary))
    }

    /// Create and add a subview without constraints
    ///
    /// - Parameter viewTitle: Text to put in the view
    /// - Returns: Generated subview
    private func createDemoSubview(viewTitle:String)->UIView {

        let constrainedView = UILabel()
        constrainedView.text = viewTitle
        constrainedView.textAlignment = .center
        constrainedView.backgroundColor = .white
        constrainedView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(constrainedView)

        return constrainedView
    }
}
