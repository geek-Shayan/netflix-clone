//
//  Test.swift
//  netflix clone
//
//  Created by MD. SHAYANUL HAQ SADI on 26/1/23.
//

import UIKit

class Test: UIView {
    
//    private let label1 : UILabel 
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(downloadButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
    
   

}
