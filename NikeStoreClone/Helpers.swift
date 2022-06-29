//
//  Helpers.swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 19.06.2022.
//

import UIKit

func makeButton(withTitle: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(withTitle, for: .normal)
    button.setTitleColor(.white, for: .normal)

    let attributedText = NSMutableAttributedString(string: withTitle, attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.kern: 1
        ])
    button.setAttributedTitle(attributedText, for: .normal)
    return button
}
