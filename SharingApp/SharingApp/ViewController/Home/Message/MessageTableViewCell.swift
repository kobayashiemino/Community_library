//
//  MessageTableViewCell.swift
//  SharingApp
//
//  Created by kobayashi emino on 2020/10/04.
//  Copyright © 2020 kobayashi emino. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    static let identifier = "MessageTableViewCell"
    
    private let revenueLabel1: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "2020's revenue so far"
        label.textAlignment = .center
        label.isHidden = true
        return label
    }()
    
    private let revenueLabel2: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "¥100000000"
        label.textAlignment = .center
        label.isHidden = true
        return label
    }()
    
    private let topicLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "TOPIC"
        label.textColor = .darkGray
        return label
    }()
    
    private let detailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "detaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetaildetail"
        label.textColor = .darkGray
        label.numberOfLines = 0
        return label
    }()
    
    private let cheerButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
        button.tintColor = .lightGray
//        button.layer.borderColor = UIColor.lightGray.cgColor
//        button.layer.borderWidth = 1
//        button.layer.cornerRadius = 25
        return button
    }()
    
    private let agreeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "hand.raised"), for: .normal)
        button.tintColor = .lightGray
//        button.layer.borderColor = UIColor.lightGray.cgColor
//        button.layer.borderWidth = 1
//        button.layer.cornerRadius = 25
        return button
    }()
    
    private let borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.lightGray.withAlphaComponent(0.075)
        addSubview(revenueLabel1)
        addSubview(revenueLabel2)
        addSubview(topicLabel)
        addSubview(detailLabel)
        addSubview(cheerButton)
        addSubview(agreeButton)
        addSubview(borderView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        revenueLabel1.frame = CGRect(x: 0, y: 15, width: width, height: 40)
        revenueLabel2.frame = CGRect(x: 0, y: revenueLabel1.bottom, width: width, height: 40)
        topicLabel.frame = CGRect(x: 10, y: 20, width: width - 140, height: 20)
        detailLabel.frame = CGRect(x: 10, y: topicLabel.bottom, width: width - 80, height: 80)
        agreeButton.frame = CGRect(x: width - 60, y: 10, width: 50, height: 50)
        cheerButton.frame = CGRect(x: width - 60, y: agreeButton.bottom + 10, width: 50, height: 50)
        borderView.frame = CGRect(x: 0, y: height - 1, width: width, height: 1)
    }
    
    public func setupfirstRow() {
        detailLabel.isHidden = true
        agreeButton.isHidden = true
        cheerButton.isHidden = true
        topicLabel.isHidden = true
        borderView.isHidden = true
        revenueLabel1.isHidden = false
        revenueLabel2.isHidden = false
        backgroundColor = .white
    }
    
    public func setupSecondRow() {
        detailLabel.isHidden = true
        agreeButton.isHidden = true
        cheerButton.isHidden = true
        topicLabel.isHidden = true
        borderView.isHidden = true
        revenueLabel1.isHidden = true
        revenueLabel2.isHidden = true
        backgroundColor = .white
        
        let segmenContol = UISegmentedControl(items: ["featured", "new"])
        segmenContol.selectedSegmentIndex = 0
        segmenContol.selectedSegmentTintColor = .lightGray
        segmenContol.selectedSegmentTintColor = .white
        segmenContol.backgroundColor = .white
        segmenContol.tintColor = .darkGray
        segmenContol.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .normal)
        segmenContol.frame = CGRect(x: 20, y: 20, width: width - 40, height: 60)
        addSubview(segmenContol)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
