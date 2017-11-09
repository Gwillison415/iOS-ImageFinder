//
//  DemoURL.swift
//  cassini
//
//  Created by Grant Willison on 11/2/17.
//  Copyright © 2017 Grant Willison. All rights reserved.
//

import Foundation
struct DemoURL {
    static let MyLinkedin = "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAeZAAAAJGVmZmY2Nzc5LWU2MzctNGQxNC04NGYxLTU3ZThhZDBlYzA3ZQ.jpg"
    
    static let AllMedia = [
        "Google Plus" : "https://lh3.googleusercontent.com/-QNeurQyo0gY/AAAAAAAAAAI/AAAAAAAACL0/IN6q4KapszI/s60-p-rw-no/photo.jpg",
        "In a Cave" : "https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-9/21686121_10100150855501653_5562802871642660211_n.jpg?oh=ec0fe7619ef71309d623016425bb49fb&oe=5A625F83",
        "My Birthday" : "https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-9/22366786_10155945046874873_5478798747793880291_n.jpg?oh=cef8f5f4b603706834f74eb0c7f38eec&oe=5AA731CF",
        ]
    
    static func FindImageNameInList(imageName: String?) ->  NSURL? {
        if let urlString = AllMedia[imageName ?? ""] {
            print("the image name is \(imageName ?? "no name")")
            return NSURL(string: urlString)
        } else {
            return nil
        }
    }
}
