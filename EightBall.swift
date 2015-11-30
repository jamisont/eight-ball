//
//  EightBall.swift
//  MagicEightBall
//
//  Created by Tatiana Jamison on 11/3/15.
//  Copyright © 2015 jamisont. All rights reserved.
//

import UIKit

struct MagicEightBall {
    private var lastRand : UInt32 = 0
    private var image : UIImage = UIImage(named: "eightBall_0")!
    private var message : String = "What's on your mind?"
    
    mutating func shakeBall() {
        var rand : UInt32
        repeat {
            rand = arc4random() % 14 + 1
        } while (rand == lastRand)
        
        lastRand = rand;
        
        switch lastRand
        {
        case 1:
            message = "Outlook good"
        case 2:
            message = "Reply hazy, try again"
        case 3:
            message = "Outlook not so good"
        case 4:
            message = "Most likely"
        case 5:
            message = "As I see it, yes"
        case 6:
            message = "Don't count on it"
        case 7:
            message = "Concentrate and ask again"
        case 8:
            message = "It is certain"
        case 9:
            message = "It is decidedly so"
        case 10:
            message = "My reply is no"
        case 11:
            message = "Without a doubt"
        case 12:
            message = "Cannot predict now"
        case 13:
            message = "Better not tell you now"
        case 14:
            message = "Very doubtful"
        default:
            message = "Did you mean to ask that?"
        }
        
        image = UIImage(named: "eightBall_\(lastRand)")!
    }
    
    func getImage() -> UIImage
    {
        return image
    }
    
    func getMessage() -> String
    {
        return message
    }
}