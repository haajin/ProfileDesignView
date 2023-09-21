//
//  TodoViewController.swift
//  TodoList
//
//  Created by hajin on 2023/09/19.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController  {
    //UserFollowInfo view3개 만들기
    let UserName = UILabel()
    let MenuButton = UIButton()
    let UserPic = UIImageView()
    let UserFollowInfo = UIView()
    let PostNum = UILabel()
    let Post = UILabel()
    let FollowerNum = UILabel()
    let Follower = UILabel()
    let FollowingNum = UILabel()
    let Following = UILabel()
    let UserInfo = UIView()
    let Name = UILabel()
    let Bio = UILabel()
    let LinkInBio = UILabel()
    let MiddleBar = UIView()
    let Follow = UIButton()
    let Message = UIButton()
    let More = UIButton()
    let NavGallery = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()

    }
}
extension ProfileViewController{
    
    // MARK: - SetUp
    
    func setUp(){
        self.view.backgroundColor = .white
        setUpUserName()
        setUpMenuButton()
        setUpUserPic()
        SetUpUserFollowInfo()
        SetUpPostNum()
        SetUpPost()
        SetUpFollowerNum()
        SetUpFollower()
        SetUpFollowingNum()
        SetUpFollowing()
        SetUpUserInfo()
        SetUpName()
        SetUpBio()
        SetUpLinkInBio()
        SetUpMiddleBar()
        SetUpFollow()
        SetUpMessage()
        SetUpMore()
//        SetUpNavGallery()

    }
    func setUpUserName(){
        view.addSubview(UserName)
        UserName.translatesAutoresizingMaskIntoConstraints = false
        UserName.text = "nabaecamp"
        UserName.textColor = .black
        UserName.font = UIFont(name: "OpenSans-Bold", size: 2)
        UserName.textAlignment = .center
        NSLayoutConstraint.activate([
            UserName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            UserName.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
        ])
        
    }
    func setUpMenuButton(){
        view.addSubview(MenuButton)
        MenuButton.translatesAutoresizingMaskIntoConstraints = false
        MenuButton.setImage(UIImage(named: "Menu"), for: .normal)
        
        NSLayoutConstraint.activate([
            MenuButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            MenuButton.centerXAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            
        ])
        
    }
    func setUpUserPic(){
        view.addSubview(UserPic)
        UserPic.translatesAutoresizingMaskIntoConstraints = false
        UserPic.image = UIImage(named: "Image")
        UserPic.widthAnchor.constraint(equalToConstant: 88).isActive = true
        UserPic.heightAnchor.constraint(equalToConstant: 88).isActive = true
        UserPic.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 14).isActive = true
        UserPic.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 93).isActive = true
        
        
    }
    func SetUpUserFollowInfo(){
        view.addSubview(UserFollowInfo)
        UserFollowInfo.translatesAutoresizingMaskIntoConstraints = false
        UserFollowInfo.widthAnchor.constraint(equalToConstant: 204).isActive = true
        UserFollowInfo.heightAnchor.constraint(equalToConstant: 41).isActive = true
        UserFollowInfo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 143).isActive = true
        UserFollowInfo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 116).isActive = true
        UserFollowInfo.backgroundColor = .black
    }
    
    func SetUpPostNum(){
        UserFollowInfo.addSubview(PostNum)
        PostNum.translatesAutoresizingMaskIntoConstraints = false
        PostNum.text = "7"
        PostNum.textColor = .yellow
        PostNum.font = UIFont.boldSystemFont(ofSize: 16.5)
        PostNum.textAlignment = .center
        PostNum.topAnchor.constraint(equalTo: UserFollowInfo.topAnchor, constant: 5).isActive = true
        PostNum.leftAnchor.constraint(equalTo: UserFollowInfo.leftAnchor, constant: 5).isActive = true
        PostNum.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -200).isActive = true

    }
    
    func SetUpPost(){
        UserFollowInfo.addSubview(Post)
        Post.translatesAutoresizingMaskIntoConstraints = false
        Post.text = "Post"
        Post.textColor = .yellow
        Post.font = UIFont(name: "OpenSans-Regular", size: 14)
        Post.textAlignment = .center
        Post.topAnchor.constraint(equalTo: PostNum.topAnchor, constant: 15).isActive = true
        Post.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        Post.bottomAnchor.constraint(equalTo: PostNum.bottomAnchor, constant: 20).isActive = true
        
    }
    
    func SetUpFollowerNum(){
        UserFollowInfo.addSubview(FollowerNum)
        FollowerNum.translatesAutoresizingMaskIntoConstraints = false
        FollowerNum.text = "0"
        FollowerNum.textColor = .yellow
        FollowerNum.font = UIFont(name: "OpenSans-Regular", size: 16.5)
        FollowerNum.textAlignment = .center
        FollowerNum.topAnchor.constraint(equalTo: UserFollowInfo.topAnchor, constant: 5).isActive = true
        FollowerNum.centerXAnchor.constraint(equalTo: UserFollowInfo.centerXAnchor).isActive = true


    }

    func SetUpFollower(){
        UserFollowInfo.addSubview(Follower)
        Follower.translatesAutoresizingMaskIntoConstraints = false
        Follower.text = "Follower"
        Follower.textColor = .yellow
        Follower.font = UIFont(name: "OpenSans-Regular", size: 14)
        Follower.textAlignment = .center
        Follower.topAnchor.constraint(equalTo: FollowerNum.topAnchor, constant: 15).isActive = true
//        Follower.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        Follower.centerXAnchor.constraint(equalTo: UserFollowInfo.centerXAnchor).isActive = true


    }
    
    func SetUpFollowingNum(){
        UserFollowInfo.addSubview(FollowingNum)
        FollowingNum.translatesAutoresizingMaskIntoConstraints = false
        FollowingNum.text = "0"
        FollowingNum.textColor = .yellow
        FollowingNum.font = UIFont(name: "OpenSans-Regular", size: 16.5)
        FollowingNum.textAlignment = .center
        FollowingNum.topAnchor.constraint(equalTo: UserFollowInfo.topAnchor, constant: 5).isActive = true
//        Follower.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        FollowingNum.rightAnchor.constraint(equalTo: UserFollowInfo.rightAnchor, constant: -10).isActive = true


    }
    
    func SetUpFollowing(){
        UserFollowInfo.addSubview(Following)
        Following.translatesAutoresizingMaskIntoConstraints = false
        Following.text = "Following"
        Following.textColor = .yellow
        Following.font = UIFont(name: "OpenSans-Regular", size: 14)
        Following.textAlignment = .center
        Following.topAnchor.constraint(equalTo: FollowingNum.topAnchor, constant: 15).isActive = true
//        Follower.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        Following.rightAnchor.constraint(equalTo: Follower.rightAnchor, constant: 90).isActive = true


    }

    func SetUpUserInfo(){
        view.addSubview(UserInfo)
        UserInfo.translatesAutoresizingMaskIntoConstraints = false
        UserInfo.widthAnchor.constraint(equalToConstant: 345).isActive = true
        UserInfo.heightAnchor.constraint(equalToConstant: 59).isActive = true
        UserInfo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
        UserInfo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 195).isActive = true
        
    }
    
    func SetUpName(){
        UserInfo.addSubview(Name)
        Name.translatesAutoresizingMaskIntoConstraints = false
        Name.text = "르탄이"
        Name.textColor = .black
        Name.font = UIFont(name: "OpenSans-Bold", size: 14)
        Name.textAlignment = .center
        Name.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 195).isActive = true
        Name.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    func SetUpBio(){
        UserInfo.addSubview(Bio)
        Bio.translatesAutoresizingMaskIntoConstraints = false
        Bio.attributedText = NSMutableAttributedString(string: "iOS Developer 🍎", attributes: [NSAttributedString.Key.kern: -0.5])
        Bio.textColor = .black
        Bio.font = UIFont(name: "OpenSans-Regular", size: 14)
        Bio.textAlignment = .center
        Bio.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 216).isActive = true
        Bio.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    func SetUpLinkInBio(){
        UserInfo.addSubview(LinkInBio)
        LinkInBio.translatesAutoresizingMaskIntoConstraints = false
        LinkInBio.attributedText = NSMutableAttributedString(string: "spartacodingclub.kr", attributes: [NSAttributedString.Key.kern: -0.5])
        LinkInBio.textColor = .black
        LinkInBio.font = UIFont(name: "OpenSans-Regular", size: 14)
        LinkInBio.textAlignment = .center
        LinkInBio.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 235).isActive = true
        LinkInBio.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    func SetUpMiddleBar(){
        view.addSubview(MiddleBar)
        MiddleBar.translatesAutoresizingMaskIntoConstraints = false
        MiddleBar.topAnchor.constraint(equalTo: UserInfo.bottomAnchor, constant: 11).isActive = true
        MiddleBar.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 15).isActive = true
        MiddleBar.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -15).isActive = true
        MiddleBar.heightAnchor.constraint(equalToConstant: 30).isActive = true
        MiddleBar.backgroundColor = .green
    }
    
    func SetUpFollow(){
        MiddleBar.addSubview(Follow)
        Follow.translatesAutoresizingMaskIntoConstraints = false
        Follow.layer.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1).cgColor
        Follow.layer.cornerRadius = 4
        Follow.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 0).isActive = true
        Follow.bottomAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 0).isActive = true
        Follow.leftAnchor.constraint(equalTo: MiddleBar.leftAnchor, constant: 0).isActive = true
        Follow.rightAnchor.constraint(equalTo: Message.rightAnchor, constant: -8).isActive = true
        Follow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Follow.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width-76) / 2).isActive = true

    }
    
    func SetUpMessage(){
        MiddleBar.addSubview(Message)
        Message.translatesAutoresizingMaskIntoConstraints = false
        
        Message.layer.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1).cgColor
        Message.layer.cornerRadius = 4
        Message.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 0).isActive = true
        Message.bottomAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 0).isActive = true
        Message.rightAnchor.constraint(equalTo: More.leftAnchor, constant: -8).isActive = true
        Message.leftAnchor.constraint(equalTo: Follow.rightAnchor, constant: 8).isActive = true
        Message.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Message.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width-76) / 2).isActive = true

    }
    
    func SetUpMore(){
        MiddleBar.addSubview(More)
        More.translatesAutoresizingMaskIntoConstraints = false
        More.setImage(UIImage(named: "More"), for: .normal)
        More.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 0).isActive = true
        More.bottomAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 0).isActive = true
        More.rightAnchor.constraint(equalTo: MiddleBar.rightAnchor, constant: 0).isActive = true
        More.leftAnchor.constraint(equalTo: Message.leftAnchor, constant: -8).isActive = true
        More.heightAnchor.constraint(equalToConstant: 30).isActive = true

    }
    
//    func SetUpNavGallery(){
//        view.addSubview(NavGallery)
//        NavGallery.translatesAutoresizingMaskIntoConstraints = false
//        NavGallery.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 15).isActive = true
//        NavGallery.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 413).isActive = true
//        NavGallery.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 1).isActive = true
//        NavGallery.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -1).isActive = true
//        NavGallery.widthAnchor.constraint(equalToConstant: 376).isActive = true
//        NavGallery.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        NavGallery.backgroundColor = .black
//    }
    
}
