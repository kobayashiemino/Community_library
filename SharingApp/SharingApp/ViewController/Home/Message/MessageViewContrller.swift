//
//  ProductDetailViewController.swift
//  SharingApp
//
//  Created by kobayashi emino on 2020/09/06.
//  Copyright © 2020 kobayashi emino. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import SafariServices
import ViewAnimator
import SDWebImage

class MessageDetailViewController: UIViewController {
    
    private var post: Post?
    
    private let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemPink
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let backTopreviousViewButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = .white
        button.layer.shadowOffset = CGSize(width: 1, height: 1)
        button.layer.shadowOpacity = 0.8
        button.layer.shadowColor = UIColor.black.cgColor
        return button
    }()
    
    private let SDGsLabel: UILabel = {
        let label = UILabel()
        label.text = "SDGs"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .center
        label.textColor = .white
        label.clipsToBounds = true
        return label
    }()
    
//    private let blurView: UIVisualEffectView = {
//        let blur = UIBlurEffect(style: .dark)
//        let view = UIVisualEffectView(effect: blur)
//        view.alpha = 0.4
//        view.clipsToBounds = true
//        return view
//    }()
//
//    private let rankImageView: UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(systemName: "rosette")
//        image.tintColor = .lightGray
//        image.contentMode = .scaleAspectFit
//        return image
//    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "TITLE"
        label.textColor = .systemGray
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        return label
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        button.tintColor = .systemPink
        return button
    }()
    
//    private let websiteButton: UIButton = {
//        let button = UIButton()
//        button.setTitleColor(.systemGray, for: .normal)
//        button.setTitle("TO WEBSITE", for: .normal)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.systemGray.cgColor
//        return button
//    }()
//
    private let captionLabel: UITextView = {
        let textView = UITextView()
        textView.text = "MESSAGEMESSAGEMESSAGEMESSAGEMESSAGEMESSAGE"
        textView.textColor = .lightGray
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 5
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.isUserInteractionEnabled = false
        return textView
    }()
    
    private let cheerButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "hand.raised"), for: .normal)
        button.tintColor = .lightGray
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 25
        return button
    }()
    
    private let agreeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
        button.tintColor = .lightGray
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 25
        return button
    }()
    
//
//    private let SDGsButton: UIButton = {
//        let button = UIButton()
//        button.setTitleColor(.systemGray, for: .normal)
//        button.setTitle("TO SDGs Item", for: .normal)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.systemGray.cgColor
//        return button
//    }()
//
//    private let communityButton: UIButton = {
//        let button = UIButton()
//        button.setTitleColor(.systemGray, for: .normal)
//        button.setTitle("TO Com Item", for: .normal)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.systemGray.cgColor
//        return button
//    }()
    
//    init(post: Post) {
//        self.post = post
//        super.init(nibName: nil, bundle: nil)
//
//        guard let imageURL = URL(string: post.imageURL) else { return }
//        itemImageView.sd_setImage(with: imageURL, completed: nil)
//
//        titleLabel.text = post.title
////        captionLabel.text = post.caption
//    }
    
//    init(index: Int) {
//        super.init(nibName: nil, bundle: nil)
//        itemImageView.image = UIImage(named: "1")
//        titleLabel.text = "title"
//        captionLabel.text = "caption"
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        addSubViews()
    }
    
    private func addSubViews() {
        view.addSubview(itemImageView)
        itemImageView.addSubview(backTopreviousViewButton)
//        itemImageView.addSubview(blurView)
//        itemImageView.addSubview(SDGsLabel)
//        view.addSubview(rankImageView)
        view.addSubview(titleLabel)
//        view.addSubview(likeButton)
//        view.addSubview(websiteButton)
        view.addSubview(captionLabel)
//        view.addSubview(SDGsButton)
//        view.addSubview(communityButton)
        view.addSubview(cheerButton)
        view.addSubview(agreeButton)
        
        backTopreviousViewButton.addTarget(self, action: #selector(didTapBackTopreviousViewButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        itemImageView.frame = CGRect(x: 0, y: 0, width: view.width, height: view.width - 50)
        SDGsLabel.frame = CGRect(x: view.width - 60, y: 10, width: 50, height: 50)
        SDGsLabel.layer.cornerRadius = SDGsLabel.width / 2
//        blurView.frame = CGRect(x: view.width - 60, y: 10, width: 50, height: 50)
//        blurView.layer.cornerRadius = blurView.width / 2
        backTopreviousViewButton.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        titleLabel.frame = CGRect(x: 10,
                                  y: itemImageView.bottom + 10,
                                  width: view.width - 90,
                                  height: 52)
//        likeButton.frame = CGRect(x: view.width - 62, y: titleLabel.top, width: 52, height: 52)
        //        rankImageView.frame = CGRect(x: titleLabel.right + 20,
        //                                     y: itemImageView.bottom + 10,
        //                                     width: 52, height: 52)
        //        rankImageView.layer.cornerRadius = rankImageView.width / 2
        captionLabel.frame = CGRect(x: 10,
                                    y: titleLabel.bottom + 10,
                                    width: view.width - 20,
                                    height: view.height - (titleLabel.bottom + 10 + 70))
//        websiteButton.frame = CGRect(x: 10,
//                                     y: captionLabel.bottom + 10,
//                                     width: view.width - 20,
//                                     height: 52)
//        SDGsButton.frame = CGRect(x: 10,
//                                  y: websiteButton.bottom + 10,
//                                  width: (view.width / 2) - 15,
//                                  height: 52)
//        communityButton.frame = CGRect(x: SDGsButton.right + 10,
//                                       y: websiteButton.bottom + 10,
//                                       width: (view.width / 2) - 15,
//                                       height: 52)
        cheerButton.frame = CGRect(x: view.width - 60, y: captionLabel.bottom + 10, width: 50, height: 50)
        agreeButton.frame = CGRect(x: view.width - 120, y: captionLabel.bottom + 10, width: 50, height: 50)
    }
    
    @objc private func didTapBackTopreviousViewButton() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
