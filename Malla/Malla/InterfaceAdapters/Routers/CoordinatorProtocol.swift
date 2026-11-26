 //
//  CoordinatorProtocol.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 26/11/26.
//

import SwiftUI

protocol CoordinatorProtocol{
    
    var path: NavigationPath{get set}
    var sheet: AppRouter{get set}
    
    func pop()
    func push()
    func popToRoot()
    func presentSheet()
    func dimissSheet()
}
