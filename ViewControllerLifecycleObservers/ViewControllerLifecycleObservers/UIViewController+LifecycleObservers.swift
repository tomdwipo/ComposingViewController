//
//  UIViewController+LifecycleObservers.swift
//  ViewControllerLifecycleObservers
//
//  Created by user on 29/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

protocol UIViewControllerLifeCycleObserver {
    func remove()
}

extension UIViewController {
    
    @discardableResult
    func onViewWillAppear(run callback: @escaping () -> Void) -> UIViewControllerLifeCycleObserver {
        let observer = ViewControllerLifeCycleObserver(viewWillAppearCallback: callback)
        add(observer)
        return observer
    }
    private func add(_ observer: UIViewController) {
        addChild(observer)
        observer.view.isHidden = true
        view.addSubview(observer.view)
        observer.didMove(toParent: self)
    }
}

private class ViewControllerLifeCycleObserver: UIViewController, UIViewControllerLifeCycleObserver {
    private var viewWillAppearCallback: () ->Void = {}
  
    convenience init(viewWillAppearCallback: @escaping () ->Void = {}) {
        self.init()
        self.viewWillAppearCallback = viewWillAppearCallback
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        viewWillAppearCallback()
    }
    
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
