//
//  ViewController.swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 10.06.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    //MARK: - Properties
    
    private let shoesLabel = UILabel()
    private let shoesImage = UIImageView()
    private let detailsLabel = UILabel()
    private let startButton = UIButton()
    
   
    //MARK: - LifeSycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - Selectors
    
    @objc func startButtonTapped() {
        navigationController?.pushViewController(MainTabBarViewController(), animated: true)
        
    }
   
    //MARK: - Helpers
    private func configureUI() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        //Shoes Label
        view.addSubview(shoesLabel)
        shoesLabel.text = "Trendy Shoes for \nEvery\nFeet"
        shoesLabel.numberOfLines = 0
        shoesLabel.font = UIFont(name: "Gill Sans Bold", size: 35)
        //Constraints
        shoesLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor,   paddingTop: 30, paddingLeft: 45)
        
        view.addSubview(shoesImage)
        shoesImage.image = UIImage(named: "img_Nike-Shoe")
        //Constraints
        shoesImage.anchor(top: shoesLabel.bottomAnchor, left: view.leftAnchor, width: 450, height: 350)
        
        //Details Label
        view.addSubview(detailsLabel)
        detailsLabel.text = "This is address you are looking for to\nfind the latest fashion and the most useful\nshoes suitable for everywhere"
        detailsLabel.font = UIFont(name: "Geneva", size: 10)
        detailsLabel.numberOfLines = 0
        detailsLabel.textColor = .lightGray
        //Constrait
        detailsLabel.anchor(top: shoesImage.bottomAnchor, left: shoesLabel.leftAnchor, paddingTop: 20)
        
        //Start Button
        view.addSubview(startButton)
        startButton.setTitle("START", for: .normal)
        startButton.setBackgroundImage(UIImage(named: "btn_start"), for: .normal)
        startButton.titleLabel?.font = UIFont(name: "Gill Sans Bold", size: 20)
        startButton.layer.cornerRadius = 15
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
        //Constraints
        startButton.anchor(top: detailsLabel.bottomAnchor, left: detailsLabel.leftAnchor, paddingTop: 50,  width: 320, height: 60)
        
        
        
    }
    
    

   
        
        
        
        
}



