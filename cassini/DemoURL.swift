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
        "Google Plus" : "https://lh3.googleusercontent.com/heggIMtkGqi3X1ndFB8W-1XT-C6f9VME1Af4ZOxqZ-yQ_OB8U49N1gXLTpnltnCS0FMXxcZZy8UlsZNQSg2C-f327pc0I65kIjBIJCBY2kypdqP1lZS29aITmJiSAPp49fAr8-MdbKqXq1zXQrSzsa3RFqYOgdKq8ywqEMZfYVeL4FPlBsSAsIrxpSfDKpLqJmRbeCSXF36Kde3a4gbYbQefvO6c9uWM46Rb5uOsFoRyjykH8sPA1JVxnbI2bEwthWb5t_olOgX3Us6tQWd_WPK1lAe3BwTBidEYfUJlRXSsAbUGoUBWpapVwqZcGsl0THjDCvZJKpj22p9IIgsXqikG5T71l2f5eioDdTW80pVy96n88OlxLjTlom8BUDqve954WbisgjfqE-NS2jBKQc0pegDNvLrUb-rvJS8relX0KHxeM9Au0uWWoo7dh9yGpbRJWXH1XIQ36MkJHtBPVQ7e6w7hEkKBlum6hX6axr9ETeAGW_S15R0yQwWQzhsCiAR6f8-sg8ogi0aMG_vE5DSxhtn1-q-8FzKYeczKXItsVl0AH4aPqGms8cGQtTCZOPnDso0U03GJCu2yw6kgq61n2KLRPbEMv_0krnys1ogTdQOwRYu43InbcZWiCfY2Yuz9QltdsaDtkZA3xiXO7mFrqo_nV3bzUac=w1285-h920-no",
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
