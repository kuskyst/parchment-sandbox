//
//  MainViewController.swift
//  parchment-sandbox
//  
//  Created by kohsaka on 2023/10/06
//  
//

import UIKit
import Parchment

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstViewController = storyboard?.instantiateViewController(identifier: "firstViewController")
        let secondViewController = storyboard?.instantiateViewController(identifier: "secondViewController")
        let thirdViewController = storyboard?.instantiateViewController(identifier: "thirdViewController")

        firstViewController?.title = "First"
        secondViewController?.title = "Second"
        thirdViewController?.title = "Third"

        let pagingViewController = PagingViewController(viewControllers: [
            firstViewController!,
            secondViewController!,
            thirdViewController!
        ])

        addChild(pagingViewController)
        view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
        pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false

        pagingViewController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        pagingViewController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        pagingViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        pagingViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
}

