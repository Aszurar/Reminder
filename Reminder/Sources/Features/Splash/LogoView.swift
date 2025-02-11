//
//  Logo.swift
//  Reminder
//
//  Created by Lucas de Lima on 11/02/25.
//

import UIKit
import Foundation

class LogoView: UIView {
    private let titleLabelLogo: UILabel =  {
        let label = UILabel()
        label.text = "Remind"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 32)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "Logo")
        logo.contentMode = .scaleAspectFit
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        return logo
    }()
    
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        self.addSubview(titleLabelLogo)
        self.addSubview(logoImageView)

        setupConstraints()
    }
    
    private func setupConstraints() {

        NSLayoutConstraint.activate([
            
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            titleLabelLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            logoImageView.trailingAnchor
                .constraint(equalTo: titleLabelLogo.leadingAnchor, constant: -12)
        ])
    }


}
