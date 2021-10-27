//
//  QuestionView.swift
//  OpenQuiz
//
//  Created by Timothy jounier on 26/10/2021.
//

import UIKit

class QuestionView: UIView {
        
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 200/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = UIColor(red: 241/255.0, green: 117/255.0, blue: 131/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Incorrect")
            icon.isHidden = false
        case .standard:
            backgroundColor = UIColor(red: 179/255.0, green: 186/255.0, blue: 191/255.0, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
}
