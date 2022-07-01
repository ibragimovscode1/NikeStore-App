//
//  ViewController.swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 10.06.2022.
//

import UIKit
import SnapKit

class Onboarding: UIViewController {
    //MARK: - Properties
    
    private var stackView = UIStackView()
    private let shoesLabel = UILabel()
    private let shoesImage = UIImageView()
    private let detailsLabel = UILabel()
    private let startButton = makeButton(withTitle: "START")
   //MARK: - LifeSycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    //MARK: - Selectors
    @objc func startButtonTapped() {
        navigationController?.pushViewController(MainTabBarViewController(), animated: true)
    }
   //MARK: - Helpers
    private func configureUI() {
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.frame = view.bounds
        NSLayoutConstraint.activate([
           stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
           stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -30),
        ])
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
       // stackView.backgroundColor = .blue
     
        //Shoes Label
        view.backgroundColor = .white
        stackView.addArrangedSubview(shoesLabel)
        shoesLabel.translatesAutoresizingMaskIntoConstraints = false
        shoesLabel.text = "Trendy Shoes for\nEvery\nFeet"
        shoesLabel.font = UIFont(name: "AvenirNext-Heavy", size: 35)
        shoesLabel.textColor = .darkGray
        shoesLabel.numberOfLines = 0
    //    shoesLabel.backgroundColor = .red

//        NSLayoutConstraint.activate([
//            shoesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
//            shoesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//
//      ])
        
        //ShoeImage
        stackView.addArrangedSubview(shoesImage)
        shoesImage.translatesAutoresizingMaskIntoConstraints = false
        shoesImage.image = UIImage(named: "img_Nike-Shoe")
       // shoesImage.backgroundColor  = .green
        
        NSLayoutConstraint.activate([
//            shoesImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160),
//            shoesImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shoesImage.widthAnchor.constraint(equalToConstant: 420),
            shoesImage.heightAnchor.constraint(equalToConstant: 350)
        ])
       
        //Details Label
        stackView.addArrangedSubview(detailsLabel)
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        detailsLabel.numberOfLines = 0
        detailsLabel.text = "This is the address you are looking for to\nfind the latest fashion and the most useful\nshoes suitable for everywhere"
        detailsLabel.font = UIFont.systemFont(ofSize: 15)
        detailsLabel.textColor = .systemGray
      //  detailsLabel.backgroundColor = .brown
        
//        NSLayoutConstraint.activate([
//            detailsLabel.topAnchor.constraint(equalTo: shoesImage.bottomAnchor, constant: 16),
//            detailsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ])
        
        stackView.addArrangedSubview(startButton)
        startButton.setBackgroundImage(UIImage(named: "btn_start"), for: .normal)
        startButton.layer.cornerRadius = 30
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
      //  startButton.backgroundColor = .white
        NSLayoutConstraint.activate([
//            startButton.topAnchor.constraint(equalTo: detailsLabel.bottomAnchor, constant: 22),
//            startButton.leadingAnchor.constraint(equalTo: detailsLabel.leadingAnchor),
//            startButton.trailingAnchor.constraint(equalTo: detailsLabel.trailingAnchor),
            startButton.heightAnchor.constraint(equalToConstant: 60)


        ])
//

        
      
        
        
    }
    
    

   
        
 

        




}
