//
//  Cordinator.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 26/11/26.
//
import SwiftUI
import Observation

@Observable
class Cordinator: CoordinatorProtocol {
    var path: NavigationPath
    
    var sheet: AppRouter
    
    init(path: NavigationPath, sheet: AppRouter) {
        self.path = path
        self.sheet = sheet
    }

    func pop() {
        
    }
    
    func push() {
        
    }
    
    func popToRoot() {
        
    }
    
    func presentSheet() {
        
    }
    
    func dimissSheet() {
        
    }
    
    
}
