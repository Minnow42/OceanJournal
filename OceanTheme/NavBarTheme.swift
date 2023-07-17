//
//  NavBarTheme.swift
//  OceanTheme
//
//  Created by Kellie Stein on 5/24/21.
//

import Foundation
import SwiftUI
import UIKit

class NavBarTheme {
    static func navigationBarColors(background : UIColor?, titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
            
            let navigationAppearance = UINavigationBarAppearance()
            navigationAppearance.configureWithOpaqueBackground()
            navigationAppearance.backgroundColor = background ?? .clear
            
            navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
            navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
           
            UINavigationBar.appearance().standardAppearance = navigationAppearance
            UINavigationBar.appearance().compactAppearance = navigationAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

            UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
        }
}
