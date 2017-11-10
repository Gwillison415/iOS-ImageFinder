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
            if view.window != nil {
                fetchImage()
            }
            
        }
    }
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.1 //The UIScrollView class can have a delegate that must adopt the UIScrollViewDelegate protocol. For zooming and panning to work, the delegate must implement both max and minzoomscale
            scrollView.maximumZoomScale = 10.0
        }
    }
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    private func fetchImage() {
        if let url = imageURL {
            spinner?.startAnimating() // optional in case i'm fetching my image
            DispatchQueue.global(qos: .userInitiated).async {
                let contentsOfURL = NSData(contentsOf: url as URL)
                DispatchQueue.main.async {
                    if url == self.imageURL {
                        if let imageData = contentsOfURL {
                            self.image = UIImage(data: imageData as Data) //makes clear that this is being aptured in the heap - as long as this MVC is around - could use weak self to handle rapid pressing of buttons
                            
                        } else {
                            self.spinner?.stopAnimating() // secondary catch in case of no image returned
                        }
                    } else {
                        print("Ignored data returned from url: \(url)")
                    }
                    
                }
                
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
            spinner?.stopAnimating() // if image is set spinning can stop  BUT if image data is not found we need else condition inside imageData given its not found
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        
    }
    
    // VWappear to find out that method 'fetchImage' will now go onscreen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }

    
    
    
}
