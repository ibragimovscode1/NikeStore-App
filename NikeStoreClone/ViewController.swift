//
//  ViewController.swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 10.06.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }
    func configure() {
        // MARK: Welcome label
        view.backgroundColor = .white
        let welcomeLabel = UILabel()
        view.addSubview(welcomeLabel)
        welcomeLabel.text = "Trendy Shoes for \nEvery\nFeet"
        welcomeLabel.font = UIFont(name: "Helvetica-Bold", size: 40)
        welcomeLabel.tintColor = .darkGray
        welcomeLabel.numberOfLines = 0
        
        
        // Label Constraints
        welcomeLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(30)
            make.top.equalToSuperview().inset(100)
        }
        //MARK: Shoes Image
            let shoesImage = UIImageView()
            shoesImage.image = UIImage(named: "img_Nike-Shoe")
            view.addSubview(shoesImage)
        
        // Image Constraints
            shoesImage.snp.makeConstraints { make in
                make.top.equalTo(welcomeLabel).inset(150)
                make.left.equalToSuperview()
                make.width.equalTo(450)
                make.height.equalTo(400)
        }
            
        
        //MARK: Detail label
        let detailLabel = UILabel()
        view.addSubview(detailLabel)
        detailLabel.numberOfLines = 0
        detailLabel.font = UIFont(name: "Hiragino Sans", size: 15)
        detailLabel.text = "This is the address you are looking for to\n find the latest fashion and beatiful\n shoes  suitable for everywhere."
        detailLabel.textColor = .lightGray
       
        // Label Constraints
        detailLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(650)
            make.left.equalToSuperview().inset(35)
        }
        // MARK: Start Button
        let startButton = UIButton()
        view.addSubview(startButton)
        startButton.setTitle("Start", for: .normal)
        startButton.titleLabel!.font = UIFont(name: "Helvetica-Bold", size: 30)
        let buttonImage = UIImage(named: "btn_start")
        startButton.setBackgroundImage(buttonImage, for: .normal)
      // Button Constraints
        startButton.snp.makeConstraints { make in
            make.top.equalTo(detailLabel).inset(80)
            make.left.equalToSuperview().inset(50)
            make.width.equalTo(300)
            make.height.equalTo(60)
        }
    
        
        
        
        
    }


}

