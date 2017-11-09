//
//  ImageViewController.swift
//  cassini
//
//  Created by Grant Willison on 11/2/17.
//  Copyright © 2017 Grant Willison. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {
// we need to say this IVC is scrollview delegate in order to cahnge the self context for scrollView.delegate
    var imageURL: NSURL? {
        didSet{
            image = nil
            fetchImage()
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.01 //The UIScrollView class can have a delegate that must adopt the UIScrollViewDelegate protocol. For zooming and panning to work, the delegate must implement both max and minzoomscale
            scrollView.maximumZoomScale = 1.0
        }
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    private func fetchImage() {
        if let url = imageURL {
            if let imageData = NSData(contentsOf: url as URL) {
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
        
    }
    
    
    
    
    
}
