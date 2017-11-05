//
//  PictureViewController.swift
//  cassini
//
//  Created by Grant Willison on 11/3/17.
//  Copyright © 2017 Grant Willison. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

   
    private struct StoryBoard {
        static let ShowImageSegue = "Show Image"
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.ShowImageSegue {
            if let ivc = segue.destination as? ImageViewController {
                let imageName = (sender as? UIButton)?.currentTitle
                ivc.imageURL = DemoURL.FindImageNameInList(imageName: imageName)
                ivc.title = imageName
//                if let sendingButton = sender as? UIButton {
//                    let imageName = sendingButton.currentTitle
//                }
            }
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
