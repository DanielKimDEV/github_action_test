//
//  View.swift
//  NotiCheck
//
//  Created by Daniel Kim on 2020/02/12.
//  Copyright © 2020 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit


extension NSCoding where Self:UIView {
    
    public static var autoLayout: Self {
        let view = self.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    public static func autoLayout(_ size: CGSize) -> Self {
        let view = self.init(frame: CGRect(origin: .zero, size: size))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    public init(autoLayout: (Self) -> Void) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        autoLayout(self)
    }
    
    public init(autoLayout: ((Self) -> Void)...) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        autoLayout.forEach {
            $0(self)
        }
    }
    
    public init(autoLayout: [((Self) -> Void)]) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        autoLayout.forEach {
            $0(self)
        }
    }
}
