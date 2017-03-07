//
//  GraphView.swift
//  mvcex
//
//  Created by CampusUser on 3/6/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class GraphView: UIView {

    //let CalcData: DiscountCalc = DiscountCalc.shared
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //CG prefix is like OPENGLprefix stuff
        let context:CGContext = UIGraphicsGetCurrentContext()!
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let paddingGuide:CGFloat = 16.0
        let leftGuide:CGFloat = paddingGuide
        let rightGuide:CGFloat = screenWidth - paddingGuide
        let topGuide:CGFloat = 64.0 + paddingGuide //80
        let bottomGuide:CGFloat = screenHeight - paddingGuide
            
        context.setFillColor(red: 0.0, green: 1.0, blue: 0.5, alpha: 1.0)
        
        //these values are all in pts not px
        //draw rect
        context.fill(CGRect(x:leftGuide,y:topGuide,width:screenWidth - (leftGuide+rightGuide),height:screenHeight - (topGuide+bottomGuide)))
        context.fill(CGRect(x:130,y:260,width:100,height:200))
        //draw text
        let myText = "Cheese on Tato Tavern"
        let subText = "Coric City"
        
        //NS is NextStep
        //Text Attributes
        let textAttributes = [
            NSFontAttributeName: UIFont(name:"Consolas", size: 16.0)!,
            NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ]
        
        myText.draw(at: CGPoint(x: leftGuide + paddingGuide, y:topGuide + paddingGuide),
                    withAttributes: textAttributes)
        subText.draw(at: CGPoint(x: leftGuide + paddingGuide, y:topGuide + (paddingGuide*2)))
    }
 

}
