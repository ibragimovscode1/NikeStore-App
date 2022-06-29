//
//  List .swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 15.06.2022.
//

import Foundation

import UIKit
class HomeController: UIViewController {
    
    //MARK: - Properties
    // First Shoe ContainerView Properties
    private let firstShoe = UIView()
    private let shoeImage1 = UIImageView()
    private let firstShoeDetails = UILabel()
    private let firstFavButton = UIButton()
   
    // Second Shoe ContainerView Properties
    private var secondShoe = UIView()
    private let shoeImage2 = UIImageView()
    private let secondShoeDetails = UILabel()
    private let secondFavButton = UIButton()
    
    // Third Shoe ContainerView Properties
    private let thirdShoe = UIView()
    private let shoeImage3 = UIImageView()
    private let thirdShoeDetails = UILabel()
    private let thirdFavButton = UIButton()
    
    //  Fourth Shoe ContainerView Properties
    private let fourthShoe = UIView()
    private let shoeImage4 = UIImageView()
    private let fourthShoeDetails = UILabel()
    private let fouthFavButton = UIButton()
    
    private let scrollView = UIScrollView()
    private var contentView = UIStackView()

 // Big Nike Container View Properties
    private let labelImageView = UIView()
    private let nikeLabel = UILabel()
    private let nikeDescriptionLabel = UILabel()
    private let labelImage = UIImageView()
    
    
    
    //MARK: - LifeSycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        configureUI()
//        setupScrollView()
    }
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        configureUI()
        setupScrollView()
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.scrollView.contentSize.height = self.view.frame.height + 1000
    }
    
    //MARK: - Selectors
    @objc func favouriteButtonTapped() {
        print("button favorite tapped")
        
    }
    
    //MARK: - Helpers
    
    private func setupScrollView() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.axis = .vertical
        contentView.spacing = 20

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.leadingAnchor)
        ])
            NSLayoutConstraint.activate([
                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor,constant: -10)
        ])
    }
    private func configureUI() {
        view.backgroundColor = .white
        contentView = UIStackView(arrangedSubviews: [labelImageView,firstShoe,secondShoe,thirdShoe,fourthShoe])
        //Label ImageView
        contentView.addArrangedSubview(labelImageView)
        labelImageView.layer.cornerRadius = 10
        labelImageView.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        labelImageView.anchor(top: contentView.safeAreaLayoutGuide.topAnchor, left: contentView.safeAreaLayoutGuide.leftAnchor,  right: contentView.safeAreaLayoutGuide.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingRight: 10,  width: 100, height: 200)
      
        //Big  Nike Shoe Image
        labelImageView.addSubview(labelImage)
        labelImage.image = UIImage(named: "img_bigShoe")
        labelImage.anchor(top: labelImageView.topAnchor, left: labelImageView.leftAnchor, paddingTop: 40, paddingLeft: 10, width: 240, height: 120)
        
        // Big NikeLabel
        labelImageView.addSubview(nikeLabel)
        nikeLabel.text = "Nike"
        nikeLabel.font = UIFont(name: "Arial Bold Italic", size: 55)
        nikeLabel.textColor = UIColor(red: 40/255, green: 77/255, blue: 103/255, alpha: 1)
        nikeLabel.anchor(top: labelImageView.topAnchor, left: labelImage.rightAnchor, paddingTop: 60, paddingLeft: 10 )
        
        // Big NikeDescriptionLabel
        labelImageView.addSubview(nikeDescriptionLabel)
        nikeDescriptionLabel.text = "Air Jordan 13"
        nikeDescriptionLabel.font = UIFont(name: "Geneva", size: 1)
        nikeDescriptionLabel.textColor = .lightGray
        //Constraints
        nikeDescriptionLabel.anchor(top: nikeLabel.bottomAnchor, left: nikeLabel.leftAnchor, paddingLeft: 5)
        
        // FirstShoe
        
        //FavoriteButton
        firstShoe.addSubview(firstFavButton)
        firstFavButton.setBackgroundImage(UIImage(named: "btn_favorite"), for: .normal)
        //Fav Button constraints
        firstFavButton.anchor(top: firstShoe.topAnchor,  right: firstShoe.rightAnchor, paddingTop: 1,  paddingRight: 1, width: 50, height: 50)
        firstFavButton.addTarget(self, action: #selector(favouriteButtonTapped), for: .touchUpInside)
           firstShoe.backgroundColor = .white
        firstShoe.layer.cornerRadius = 10
        firstShoe.layer.borderWidth = 1
        firstShoe.layer.borderColor = UIColor.lightGray.cgColor
        
        //First Shoe ContainerView Constraints
        firstShoe.anchor(top: labelImageView.bottomAnchor, left: labelImageView.leftAnchor, right: labelImageView.rightAnchor, paddingTop: 20,  width: 380, height: 120)
        firstShoe.addSubview(shoeImage1)
        shoeImage1.translatesAutoresizingMaskIntoConstraints = false
        shoeImage1.image = UIImage(named: "img_shoe1")
        shoeImage1.anchor(top: firstShoe.topAnchor, left: firstShoe.leftAnchor,  paddingTop: 20, paddingLeft: 15, width: 140, height: 70)
     
        // First Shoes Details: Price, Name
        firstShoe.addSubview(firstShoeDetails)
        let attributedText = NSMutableAttributedString(string: "Nike", attributes: [NSAttributedString.Key.font : UIFont(name: "Arial Italic", size: 15)!])
        attributedText.append(NSAttributedString(string: "\n\nAir Force 1 Jester XX\nBlock Sonic Yellow", attributes: [NSAttributedString.Key.font : UIFont(name: "Arial", size: 10)!, NSAttributedString.Key.foregroundColor : UIColor.lightGray]))
        attributedText.append(NSAttributedString(string: "\n$96", attributes: [NSAttributedString.Key.font : UIFont(name: "Arial Italic", size: 15)!]))
        firstShoeDetails.numberOfLines = 0
        firstShoeDetails.attributedText = attributedText
        firstShoeDetails.anchor(top: firstShoe.topAnchor, right: shoeImage1.rightAnchor, paddingTop: 15, paddingRight: -140)
    
        
       


        
    }
   
}
