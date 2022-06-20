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
    private let stack = UIStackView()
    private let firstSneaker = UIView()
    private let secondSneaker = UIView()
    private let thirdSneaker = UIView()
    private let fourthSneaker = UIView()
    private let favouriteButton = UIButton()
 
    private let contentView = UIView()
    private let pullToRefresh = UIRefreshControl()
    
 
    private let labelImageView = UIView()
    private let nikeLabel = UILabel()
    private let nikeDescriptionLabel = UILabel()
    private let labelImage = UIImageView()
    
    
    
    //MARK: - LifeSycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
      
    }
    
    //MARK: - Selectors
    @objc func favouriteButtonTapped() {
        
    }
    @objc func refreshPulled() {
        print("refreshing....")
    }
    
    
    
    //MARK: - Helpers
    
    
  
    private func configureUI() {

        view.backgroundColor = .white
        //Label ImageView
        view.addSubview(labelImageView)
        labelImageView.layer.cornerRadius = 10
        labelImageView.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        labelImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor,  right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingRight: 10,  width: 400, height: 200)
      
        //Big Shoe
        labelImageView.addSubview(labelImage)
        labelImage.image = UIImage(named: "img_bigShoe")
        labelImage.anchor(top: labelImageView.topAnchor, left: labelImageView.leftAnchor, paddingTop: 40, paddingLeft: 10, width: 240, height: 120)
        
        //NikeLabel
        labelImageView.addSubview(nikeLabel)
        nikeLabel.text = "Nike"
        nikeLabel.font = UIFont(name: "Arial Bold Italic", size: 55)
        nikeLabel.textColor = UIColor(red: 40/255, green: 77/255, blue: 103/255, alpha: 1)
        nikeLabel.anchor(top: labelImageView.topAnchor, left: labelImage.rightAnchor, paddingTop: 60, paddingLeft: 10 )
        
        //NikedescriptionLabel
        view.addSubview(nikeDescriptionLabel)
        nikeDescriptionLabel.text = "Air Jordan 13"
        nikeDescriptionLabel.font = UIFont(name: "Geneva", size: 1)
        nikeDescriptionLabel.textColor = .lightGray
        //Constraints
        nikeDescriptionLabel.anchor(top: nikeLabel.bottomAnchor, left: nikeLabel.leftAnchor, paddingLeft: 5)
        
        // FirstSneaker
        view.addSubview(firstSneaker)
        //FavoriteButton
        firstSneaker.addSubview(favouriteButton)
        favouriteButton.setBackgroundImage(UIImage(named: "btn_favorite"), for: .normal)
        //Fav Button constraints
        favouriteButton.anchor(top: firstSneaker.topAnchor,  right: firstSneaker.rightAnchor, paddingTop: 1,  paddingRight: 1, width: 50, height: 50)
        favouriteButton.addTarget(self, action: #selector(favouriteButtonTapped), for: .touchUpInside)
        firstSneaker.backgroundColor = .white
        firstSneaker.layer.cornerRadius = 10
        firstSneaker.layer.borderWidth = 1
        firstSneaker.layer.borderColor = UIColor.lightGray.cgColor
        
        //SneakerView Constraints
        firstSneaker.anchor(top: labelImageView.bottomAnchor, left: labelImageView.leftAnchor, right: labelImageView.rightAnchor, paddingTop: 15,  width: 400, height: 120)
 //       view.addSubview(stack)
//        stack = UIStackView(arrangedSubviews: [firstSneaker, secondSneaker, thirdSneaker, fourthSneaker])
//        stack.axis = .vertical
//        stack.spacing = 10
//
        
    }
   
}
