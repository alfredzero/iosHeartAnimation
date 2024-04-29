//
//  ViewController.swift
//  iosHeartAnimation
//
//  Created by Alfredo Amezcua on 4/28/24.
//

import UIKit

class ViewController: UIViewController {

    let imageAnimation: UIImageView = {
        let ani = UIImageView()
        ani.isUserInteractionEnabled = true
        ani.image = UIImage(named: "tile00")
        ani.translatesAutoresizingMaskIntoConstraints = false
        return ani
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(imageAnimation)
        imageAnimation.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        imageAnimation.heightAnchor.constraint(equalToConstant: 75).isActive = true
        imageAnimation.widthAnchor.constraint(equalToConstant: 75).isActive = true
        imageAnimation.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageAnimation.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        for i in 0..<29 {
                   print("tile0\(i)")
                   motionClip.append(UIImage(named: "tile0\(i)")!)
        }
    }
    
    var motionClip = [UIImage]()

    @objc func animate() {
        print("heart swoosh")
        imageAnimation.animationImages = motionClip
        imageAnimation.animationDuration = 1
        imageAnimation.animationRepeatCount = 1
        imageAnimation.startAnimating()
    }
}

