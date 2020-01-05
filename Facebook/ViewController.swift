//
//  ViewController.swift
//  Facebook
//
//  Created by Achsuthan Mahendran on 1/5/20.
//  Copyright © 2020 Achsuthan Mahendran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let txtSearch: UITextField = {
        let textFiled  = UITextField()
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        textFiled.placeholder = "நித்தியானந்தா"
        textFiled.text = "நித்தியானந்தா"
        return textFiled
    }()
    
    let profileView: UIView = {
        let view = UIView()
        return view
    }()
    
    let lblProfileName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "நித்தியானந்தா"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 26)
        return label
    }()
    
    let lblDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text  = "சுவாமி நித்தியானந்தர் என்றும் பரவலாக பரமஹம்ச நித்தியானந்தா எனவும் அறியப்படுபவர் ஒரு ஆன்மீக குரு ஆவார். இவர் பரமஹம்ச நித்தியானந்த தீயான பீடம் என்பதை தோற்றுவித்துள்ளார்"
        label.textAlignment  = .center
        label.textColor  = .gray
        return label
    }()
    
    let profileImage: UIImageView = {
        let image  = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = #imageLiteral(resourceName: "fb_profile")
        return image
    }()
    
    let backgroundImage: UIImageView = {
        let image  = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image =  #imageLiteral(resourceName: "fb_background")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setUpUI()
    }
    
    private func setUpUI(){
        
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(topView)
        topView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let backView  = UIView()
        backView.translatesAutoresizingMaskIntoConstraints = false
        backView.widthAnchor.constraint(equalToConstant: 50).isActive  = true
        
        let backImage  = UIImageView()
        backImage.translatesAutoresizingMaskIntoConstraints = false
        backView.addSubview(backImage)
        backImage.image = #imageLiteral(resourceName: "fb_back")
        backImage.contentMode = .scaleAspectFit
        backImage.image = backImage.image!.withRenderingMode(.alwaysTemplate)
        backImage.tintColor = .black
        backImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        backImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        backImage.centerYAnchor.constraint(equalTo: backView.centerYAnchor).isActive = true
        backImage.centerXAnchor.constraint(equalTo: backView.centerXAnchor).isActive = true
        
        
        let searchView = UIView()
        searchView.translatesAutoresizingMaskIntoConstraints = false
        
        let searchInsideView = UIView()
        searchInsideView.translatesAutoresizingMaskIntoConstraints = false
        searchView.addSubview(searchInsideView)
        searchInsideView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        searchInsideView.centerXAnchor.constraint(equalTo: searchView.centerXAnchor).isActive = true
        searchInsideView.centerYAnchor.constraint(equalTo: searchView.centerYAnchor).isActive = true
        searchInsideView.backgroundColor = UIColor(displayP3Red: 225/255, green: 229/255, blue: 235/255, alpha: 1)
        searchInsideView.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 10).isActive = true
        searchInsideView.trailingAnchor.constraint(equalTo: searchView.trailingAnchor, constant: -10).isActive = true
        searchInsideView.layer.cornerRadius = 20
        
        let searchIcon = UIImageView()
        searchIcon.translatesAutoresizingMaskIntoConstraints = false
        searchInsideView.addSubview(searchIcon)
        searchIcon.image = #imageLiteral(resourceName: "fb_search")
        searchIcon.leadingAnchor.constraint(equalTo: searchInsideView.leadingAnchor, constant: 10).isActive = true
        searchIcon.centerYAnchor.constraint(equalTo: searchInsideView.centerYAnchor).isActive = true
        searchIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        searchIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        searchIcon.image = searchIcon.image!.withRenderingMode(.alwaysTemplate)
        searchIcon.tintColor = .gray
        
        searchInsideView.addSubview(txtSearch)
        txtSearch.leadingAnchor.constraint(equalTo: searchIcon.trailingAnchor, constant: 10).isActive = true
        txtSearch.trailingAnchor.constraint(equalTo: searchInsideView.trailingAnchor, constant: -10).isActive = true
        txtSearch.centerYAnchor.constraint(equalTo: searchIcon.centerYAnchor).isActive = true
        txtSearch.heightAnchor.constraint(equalTo: searchInsideView.heightAnchor, multiplier: 1) .isActive = true
        
        
        
        let editProfileView = UIView()
        editProfileView.translatesAutoresizingMaskIntoConstraints = false
        editProfileView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        let editImage  = UIImageView()
        editImage.translatesAutoresizingMaskIntoConstraints = false
        editProfileView.addSubview(editImage)
        editImage.image = #imageLiteral(resourceName: "fb_edit")
        editImage.contentMode = .scaleAspectFit
        editImage.image = editImage.image!.withRenderingMode(.alwaysTemplate)
        editImage.tintColor = .black
        editImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        editImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        editImage.centerYAnchor.constraint(equalTo: editProfileView.centerYAnchor).isActive = true
        editImage.centerXAnchor.constraint(equalTo: editProfileView.centerXAnchor).isActive = true
        
        
        let topStackView  = UIStackView(arrangedSubviews: [backView, searchView, editProfileView])
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topView.addSubview(topStackView)
        topStackView.axis = .horizontal
        topStackView.distribution = .fill
        topStackView.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true
        topStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        topStackView.trailingAnchor.constraint(equalTo: topView.trailingAnchor).isActive = true
        topStackView.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        
        
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        lineView.leadingAnchor.constraint(equalTo: topView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        lineView.trailingAnchor.constraint(equalTo: topView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        lineView.backgroundColor = .gray
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        let scrollView  = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 53).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        let insideScrollView  = UIView()
        scrollView.addSubview(insideScrollView)
        insideScrollView.translatesAutoresizingMaskIntoConstraints = false
        let heightAnchor  = insideScrollView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor, constant: 4000)
        heightAnchor.isActive = true
        heightAnchor.priority = UILayoutPriority(rawValue: 250)
        self.view.layoutIfNeeded()
        insideScrollView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        insideScrollView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        insideScrollView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        insideScrollView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        insideScrollView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        
        let backgroundView  = UIView()
        insideScrollView.addSubview(backgroundView)
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.leadingAnchor.constraint(equalTo: insideScrollView.leadingAnchor, constant: 10).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: insideScrollView.trailingAnchor, constant: -10).isActive = true
        backgroundView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        backgroundView.topAnchor.constraint(equalTo: insideScrollView.topAnchor, constant: 10).isActive  = true
        backgroundView.layer.cornerRadius = 20
        backgroundView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        backgroundView.clipsToBounds = true
        
        backgroundView.addSubview(backgroundImage)
        backgroundImage.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: backgroundView.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor).isActive = true
        
        let backgroundCamView  = UIView()
        backgroundView.addSubview(backgroundCamView)
        backgroundCamView.translatesAutoresizingMaskIntoConstraints = false
        backgroundCamView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -10).isActive = true
        backgroundCamView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10).isActive = true
        backgroundCamView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        backgroundCamView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        backgroundCamView.backgroundColor = UIColor(displayP3Red: 225/255, green: 229/255, blue: 235/255, alpha: 1)
        backgroundCamView.layer.cornerRadius = 10
        
        let backgroundCamImage = UIImageView()
        backgroundCamView.addSubview(backgroundCamImage)
        backgroundCamImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundCamImage.image = #imageLiteral(resourceName: "fb_camera")
        backgroundCamImage.image = backgroundCamImage.image!.withRenderingMode(.alwaysTemplate)
        backgroundCamImage.tintColor = .black
        backgroundCamImage.centerXAnchor.constraint(equalTo: backgroundCamView.centerXAnchor).isActive = true
        backgroundCamImage.centerYAnchor.constraint(equalTo: backgroundCamView.centerYAnchor).isActive = true
        backgroundCamImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        backgroundCamImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        insideScrollView.addSubview(profileView)
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.centerYAnchor.constraint(equalTo: insideScrollView.centerYAnchor, constant: 10).isActive = true
        profileView.centerXAnchor.constraint(equalTo: insideScrollView.centerXAnchor, constant: -10).isActive = true
        profileView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        profileView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileView.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -75).isActive  = true
        profileView.layer.cornerRadius = 75
        profileView.layer.borderWidth = 5
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.clipsToBounds = true
        
        profileView.addSubview(profileImage)
        profileImage.leadingAnchor.constraint(equalTo: profileView.leadingAnchor).isActive = true
        profileImage.trailingAnchor.constraint(equalTo: profileView.trailingAnchor).isActive = true
        profileImage.topAnchor.constraint(equalTo: profileView.topAnchor).isActive = true
        profileImage.bottomAnchor.constraint(equalTo: profileView.bottomAnchor).isActive = true
        
        
        let profileCamView  = UIView()
        insideScrollView.addSubview(profileCamView)
        profileCamView.translatesAutoresizingMaskIntoConstraints = false
        profileCamView.bottomAnchor.constraint(equalTo: profileView.bottomAnchor, constant: -5).isActive = true
        profileCamView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -5).isActive = true
        profileCamView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        profileCamView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileCamView.backgroundColor = UIColor(displayP3Red: 225/255, green: 229/255, blue: 235/255, alpha: 1)
        profileCamView.layer.cornerRadius = 25
        
        let profileCamImage = UIImageView()
        profileCamView.addSubview(profileCamImage)
        profileCamImage.translatesAutoresizingMaskIntoConstraints = false
        profileCamImage.image = #imageLiteral(resourceName: "fb_camera")
        profileCamImage.image = backgroundCamImage.image!.withRenderingMode(.alwaysTemplate)
        profileCamImage.tintColor = .black
        profileCamImage.centerXAnchor.constraint(equalTo: profileCamView.centerXAnchor).isActive = true
        profileCamImage.centerYAnchor.constraint(equalTo: profileCamView.centerYAnchor).isActive = true
        profileCamImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        profileCamImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        insideScrollView.addSubview(lblProfileName)
        lblProfileName.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 10).isActive = true
        lblProfileName.leadingAnchor.constraint(equalTo: insideScrollView.leadingAnchor, constant:  10).isActive = true
        lblProfileName.trailingAnchor.constraint(equalTo: insideScrollView.trailingAnchor, constant: -10).isActive = true
        lblProfileName.numberOfLines = 0
        
        
        insideScrollView.addSubview(lblDescription)
        lblDescription.topAnchor.constraint(equalTo: lblProfileName.bottomAnchor, constant: 5).isActive = true
        lblDescription.leadingAnchor.constraint(equalTo: insideScrollView.leadingAnchor, constant:  10).isActive = true
        lblDescription.trailingAnchor.constraint(equalTo: insideScrollView.trailingAnchor, constant: -10).isActive = true
        lblDescription.numberOfLines = 5
        
        
        let addStoryView = UIView()
        addStoryView.translatesAutoresizingMaskIntoConstraints = false
        
        let addStoryInsideView = UIView()
        addStoryInsideView.translatesAutoresizingMaskIntoConstraints = false
        addStoryView.addSubview(addStoryInsideView)
        
        
        let moreView = UIView()
        moreView.translatesAutoresizingMaskIntoConstraints = false
        moreView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        moreView.backgroundColor = UIColor(displayP3Red: 225/255, green: 229/255, blue: 235/255, alpha: 1)
        moreView.layer.cornerRadius = 10
        
        let moreImage  = UIImageView()
        moreImage.translatesAutoresizingMaskIntoConstraints = false
        moreImage.image = #imageLiteral(resourceName: "fb_more")
        moreImage.image = moreImage.image!.withRenderingMode(.alwaysTemplate)
        moreImage.tintColor = .black
        moreView.addSubview(moreImage)
        moreImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        moreImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        moreImage.centerYAnchor.constraint(equalTo: moreView.centerYAnchor).isActive  = true
        moreImage.centerXAnchor.constraint(equalTo: moreView.centerXAnchor).isActive  = true
        
        let addStoryStackView = UIStackView(arrangedSubviews: [addStoryView, moreView])
        addStoryStackView.translatesAutoresizingMaskIntoConstraints = false
        insideScrollView.addSubview(addStoryStackView)
        addStoryStackView.leadingAnchor.constraint(equalTo: insideScrollView.leadingAnchor, constant: 20).isActive = true
        addStoryStackView.trailingAnchor.constraint(equalTo: insideScrollView.trailingAnchor, constant: -20).isActive = true
        addStoryStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addStoryStackView.topAnchor.constraint(equalTo: lblDescription.bottomAnchor, constant: 20).isActive = true
        
        
        addStoryInsideView.leadingAnchor.constraint(equalTo: addStoryView.leadingAnchor).isActive = true
        addStoryInsideView.trailingAnchor.constraint(equalTo: addStoryView.trailingAnchor, constant: -10).isActive = true
        addStoryInsideView.heightAnchor.constraint(equalTo: addStoryView.heightAnchor, multiplier: 1).isActive = true
        addStoryInsideView.centerYAnchor.constraint(equalTo: addStoryView.centerYAnchor).isActive = true
        addStoryInsideView.layer.cornerRadius = 10
        addStoryInsideView.backgroundColor = .systemBlue
        
        
        let addStoryImage = UIImageView()
        addStoryImage.accessibilityRespondsToUserInteraction = false
        addStoryImage.image = #imageLiteral(resourceName: "fb_camera")
        addStoryImage.image = addStoryImage.image!.withRenderingMode(.alwaysTemplate)
        addStoryImage.tintColor = .white
        addStoryImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        addStoryImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        let lblAddStory  = UILabel()
        lblAddStory.translatesAutoresizingMaskIntoConstraints = false
        lblAddStory.text = "  Add Story"
        lblAddStory.font = UIFont.boldSystemFont(ofSize: 20)
        lblAddStory.textColor = .white
        
        
        let addStoryInsideStackView = UIStackView(arrangedSubviews: [addStoryImage, lblAddStory])
        addStoryInsideStackView.distribution = .fill
        addStoryInsideStackView.translatesAutoresizingMaskIntoConstraints = false
        addStoryInsideView.addSubview(addStoryInsideStackView)
        addStoryInsideStackView.widthAnchor.constraint(equalToConstant: 140).isActive = true
        addStoryInsideStackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        addStoryInsideStackView.centerYAnchor.constraint(equalTo: addStoryInsideView.centerYAnchor).isActive = true
        addStoryInsideStackView.centerXAnchor.constraint(equalTo: addStoryInsideView.centerXAnchor).isActive = true
        
        
        let lineView2 = UIView()
        lineView2.translatesAutoresizingMaskIntoConstraints = false
        lineView2.backgroundColor = .gray
        insideScrollView.addSubview(lineView2)
        lineView2.leadingAnchor.constraint(equalTo: insideScrollView.leadingAnchor, constant: 20).isActive = true
        lineView2.trailingAnchor.constraint(equalTo: insideScrollView.trailingAnchor, constant: -20).isActive = true
        lineView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView2.topAnchor.constraint(equalTo: addStoryStackView.bottomAnchor, constant: 20).isActive = true
        
        lineView2.bottomAnchor.constraint(greaterThanOrEqualTo: insideScrollView.bottomAnchor, constant: -20).isActive = true
        
        
        
    }
    
    
}

