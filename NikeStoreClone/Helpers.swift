//
//  Helpers.swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 19.06.2022.
//

import UIKit
//class Helpers {

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



func shoeContainer(withImage  image: UIImage, withName text1: String, withDetail text2: String, withPrice text3: String) -> UIView {
    //Container
    let container = UIView()
    container.translatesAutoresizingMaskIntoConstraints = false
    container.layer.borderWidth = 1
    container.layer.borderColor = UIColor.systemGray.cgColor
    container.layer.cornerRadius = 10
    container.heightAnchor.constraint(equalToConstant: 125).isActive = true
//    container.widthAnchor.constraint(equalToConstant: 380).isActive = true
    
    //Fav Button
    let favButton = UIButton()
    favButton.translatesAutoresizingMaskIntoConstraints = false
    container.addSubview(favButton)
    favButton.setBackgroundImage(UIImage(named: "btn_favorite"), for: .normal)
//    favButton.addTarget(favButton, action: #selector(favButtonTapped), for: .touchUpInside)
        
    
    
    //ShoeImage
    let shoeImage = UIImageView()
    shoeImage.image = image
    shoeImage.translatesAutoresizingMaskIntoConstraints = false
    container.addSubview(shoeImage)
    
    let detailsLabel = UILabel()
    detailsLabel.translatesAutoresizingMaskIntoConstraints = false
    container.addSubview(detailsLabel)
    detailsLabel.numberOfLines = 0
  
    let attributedText = NSMutableAttributedString(string: text1, attributes: [NSAttributedString.Key.font : UIFont(name: "Arial Italic", size: 16)!])
    attributedText.append(NSAttributedString(string: text2, attributes: [NSAttributedString.Key.font : UIFont(name: "Arial", size: 13)!, NSAttributedString.Key.foregroundColor : UIColor.lightGray]))
    attributedText.append(NSAttributedString(string: text3, attributes: [NSAttributedString.Key.font : UIFont(name: "Arial Italic", size: 16)!]))
    detailsLabel.attributedText = attributedText

    
    NSLayoutConstraint.activate([
        //Shoes constraint
        shoeImage.topAnchor.constraint(equalTo: container.topAnchor, constant: 20),
        shoeImage.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 15),
        shoeImage.widthAnchor.constraint(equalToConstant: 140),
        shoeImage.heightAnchor.constraint(equalToConstant: 70),
        
        //Fav Button Constraints
        favButton.topAnchor.constraint(equalTo: container.topAnchor, constant: 1),
        favButton.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -1),
        favButton.widthAnchor.constraint(equalToConstant: 50),
        favButton.heightAnchor.constraint(equalToConstant: 50),
        
        //Details Label Constraints
        
        detailsLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 15),
        detailsLabel.leadingAnchor.constraint(equalTo: container.centerXAnchor),
        
        
    
    ])
    
    
    return container
}
//    @objc func favButtonTapped() {
//
//    }
//}
