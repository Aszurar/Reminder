//
//  SplashView.swift
//  Reminder
//
//  Created by Lucas de Lima on 06/02/25.
//
import Foundation
import UIKit

class SplashView: UIView {
    
    private let logo: LogoView = {
        let logo = LogoView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        return logo
    }()
   
    
    init(){
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .systemRed
        
        
        self.addSubview(logo)
        
        setupConstraints()
    }
    
    private func  setupConstraints(){
        
        NSLayoutConstraint.activate([
            
            logo.centerXAnchor
                .constraint(equalTo: self.centerXAnchor),
            
            logo.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        
    }
}
