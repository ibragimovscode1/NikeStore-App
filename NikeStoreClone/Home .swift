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
    private let firstShoe = shoeContainer(withImage: UIImage(named: "img_shoe1")!, withName: "Nike", withDetail: "\n\nAir Force 1 Jester XX\nBlock Sonic Yellow", withPrice: "\n\n$96")

    // Second Shoe ContainerView Properties
    private let secondShoe = shoeContainer(withImage: UIImage(named: "img_shoe2")!, withName: "Nike", withDetail: "\n\nAir Jordan 1 Retro\nHigh Obsidian UNC", withPrice: "\n\n196$")

    
    // Third Shoe ContainerView Properties
    private let thirdShoe = shoeContainer(withImage: UIImage(named: "img_shoe3")!, withName: "New Balance", withDetail: "\n\n547 Unisex", withPrice: "\n\n96$")
  
    //  Fourth Shoe ContainerView Properties
    private let fourthShoe = shoeContainer(withImage: UIImage(named: "img_shoe4")!, withName: "Nike", withDetail: "\n\nAir Force 1 Shadow\nBeige Pale Ivory", withPrice: "\n\n115$")
  
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
        self.scrollView.contentSize.height = self.view.frame.height + 200
    }
    
    //MARK: - Selectors
    @objc  public func favouriteButtonTapped() {
        print("button favorite tapped")
        
    }
    
    //MARK: - Helpers
    
    private func setupScrollView() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.axis = .vertical
        contentView.spacing = 20
        contentView.distribution = .equalSpacing
        contentView.alignment = .fill

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo:self.view.leadingAnchor)
        ])
            NSLayoutConstraint.activate([
                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
                contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 4),
                contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -8)
        ])
    }
    private func configureUI() {
        view.backgroundColor = .white
        
        //Label ImageView
        contentView.addArrangedSubview(labelImageView)
        contentView.addArrangedSubview(firstShoe)
        contentView.addArrangedSubview(secondShoe)
        contentView.addArrangedSubview(thirdShoe)
        contentView.addArrangedSubview(fourthShoe)
        labelImageView.layer.cornerRadius = 10
        labelImageView.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        labelImageView.anchor(top: contentView.safeAreaLayoutGuide.topAnchor, left: contentView.leftAnchor,  right: contentView.rightAnchor, paddingTop: 50, paddingLeft: 4, paddingRight: 10,  height: 170)
      
        //Big  Nike Shoe Image
        labelImageView.addSubview(labelImage)
        labelImage.image = UIImage(named: "img_bigShoe")
        labelImage.anchor(top: labelImageView.topAnchor, left: labelImageView.leftAnchor, paddingTop: 40, paddingLeft: 10, width: 200, height: 100)
        
        // Big NikeLabel
        labelImageView.addSubview(nikeLabel)
        nikeLabel.text = "Nike"
        nikeLabel.font = UIFont(name: "Arial Bold Italic", size: 40)
        nikeLabel.textColor = UIColor(red: 40/255, green: 77/255, blue: 103/255, alpha: 1)
        nikeLabel.anchor(top: labelImageView.topAnchor, left: labelImage.rightAnchor, right: labelImageView.rightAnchor, paddingTop: 40, paddingLeft: 25,paddingRight: 5 )
        
        // Big NikeDescriptionLabel
        labelImageView.addSubview(nikeDescriptionLabel)
        nikeDescriptionLabel.text = "Air Jordan 13"
        nikeDescriptionLabel.adjustsFontSizeToFitWidth = true
        nikeDescriptionLabel.textAlignment = .center
        nikeDescriptionLabel.font = UIFont(name: "Geneva", size: 1)
        nikeDescriptionLabel.textColor = .lightGray
        //Constraints
        nikeDescriptionLabel.anchor(top: nikeLabel.bottomAnchor,left: labelImage.rightAnchor, right: labelImageView.rightAnchor, paddingTop: 1, paddingLeft: 10, paddingRight: 25)
        nikeDescriptionLabel.centerYAnchor.constraint(equalTo: labelImageView.centerYAnchor).isActive = true
        
        
        
      
        
       


        
    }
   
}
