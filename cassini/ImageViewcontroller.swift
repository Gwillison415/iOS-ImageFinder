//
//  ImageViewController.swift
//  cassini
//
//  Created by Grant Willison on 11/2/17.
//  Copyright © 2017 Grant Willison. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var imageURL: URL? {
        didSet{
            image = nil
            fetchImage()
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            if let imageData = NSData(contentsOf: url) {
                image = UIImage(data: imageData as Data)
            }
        }
    }
    private var imageView = UIImageView()
    
    private var image: UIImage? {// computed var
        get{
            return imageView.image;
        }
        set{
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        imageURL = URL(string: DemoURL.MyLinkedin)
        
    }
    
    
    
    
    
}
