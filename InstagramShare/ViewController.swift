//
//  ViewController.swift
//  InstagramShare
//
//  Created by ENFINY INNOVATIONS on 8/6/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var shareButton: UIButton = {
        let btn = UIButton(frame: .init(x: 0, y: 0, width: 150, height: 50))
        btn.setTitle("Share Image", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(shareButton)
        shareButton.addTarget(self, action: #selector(shareButtonTapped), for: .touchUpInside)
        shareButton.center = view.center
        
        
    }
    
    @objc func shareButtonTapped() {
        let imageToShare = #imageLiteral(resourceName: "sample")
        let activityController = UIActivityViewController(activityItems: [imageToShare], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    


}

