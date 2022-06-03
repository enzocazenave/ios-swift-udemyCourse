//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Enzo Cazenave on 02/06/2022.
//

import UIKit

class PageViewController: UIPageViewController {

    private var myControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcGreen")
        let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcPink")
        
        myControllers.append(myGreenVC)
        myControllers.append(myPinkVC)
        
        setViewControllers([myGreenVC], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
        print("Charged")
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        print("before")
        if index == 0 {
            return myControllers.last
        }
        
        return myControllers.first
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        print("after")
        if index == 0 {
            return myControllers.last
        }
        
        return myControllers.first
    }
}
