//
//  File.swift
//  MyHabits
//
//  Created by Sergey Omelchenko on 29.04.2022.
//

import UIKit

import UIKit
extension UIView {
    func toAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        for subview in subviews {
            self.addSubview(subview)
        }
    }
}
